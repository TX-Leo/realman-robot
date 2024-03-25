import os
import sys
import numpy as np
from PIL import Image
import open3d as o3d
import torch

from camera import CamIntrinsic,RealSense
from arm import Arm
from grasper_package.graspnetAPI.graspnet_eval import GraspGroup
from grasper_package.graspnetAPI.graspnet_eval import GraspGroup
from grasper_package.models.graspnet import GraspNet, pred_decode
from grasper_package.dataset.graspnet_dataset import minkowski_collate_fn
from grasper_package.utils.collision_detector import ModelFreeCollisionDetector

class Grasper:
    def __init__(self,camera:RealSense,arm:Arm,rgb_img,d_img,checkpoint_path:str):
        '''
        camera:
        arm:
        rgb_img
        d_img
        checkpoint_path 

        seed_feat_dim: Point wise feature dim
        num_point: Point Number
        batch_size: Batch Size during inference
        voxel_size: Voxel Size for sparse convolution
        collision_thresh: Collision Threshold in collision detection
        voxel_size_cd: Voxel Size for collision detection
        '''
        self.camera = camera
        self.arm = arm
        self.rgb_img = rgb_img
        self.d_img = d_img
        self.checkpoint_path = checkpoint_path
        # TODO begin
        self.seed_feat_dim = 512
        self.num_point = 15000
        self.batch_size = 1
        self.voxel_size=  0.005
        self.collision_thresh = 0.01
        self.voxel_size_cd = 0.01
        # TODO end

    def process_data(self):
        # load real data
        color = self.rgb_img / 255
        color = color[:, :, ::-1]
        depth = self.d_img.astype(np.float32)

        # compute workspace limits
        # TODO begin
        x_left_up,y_left_up = 0+25,242+25
        x_right_bottom,y_right_bottom = 719-25,977-25
        # TODO end
        point_z = depth[x_left_up,y_left_up] / (1.0 / self.camera.depth_scale)
        point_x = (y_left_up - self.camera.intrinsic.cx) * point_z / self.camera.intrinsic.fx
        point_y = (x_left_up - self.camera.intrinsic.cy) * point_z / self.camera.intrinsic.fy
        point_left_up = (point_x,point_y,point_z)
        point_z = depth[x_right_bottom,y_right_bottom] / (1.0 / self.camera.depth_scale)
        point_x = (y_right_bottom - self.camera.intrinsic.cx) * point_z / self.camera.intrinsic.fx
        point_y = (x_right_bottom - self.camera.intrinsic.cy) * point_z / self.camera.intrinsic.fy
        point_right_bottom = (point_x, point_y, point_z)

        # generate cloud
        cloud = self.camera.create_point_cloud_from_depth_image(depth) #720,1080,3

        # get valid points
        depth_mask = (depth > 0)
        workspace_mask = np.array(Image.open('./cfg/workspace_mask.png')) #[720,1280][241false,978false]
        mask = (workspace_mask & depth_mask)

        cloud_masked = cloud[mask] #51225,3
        color_masked = color[mask]

        # sample points random
        if len(cloud_masked) >= self.num_point:
            idxs = np.random.choice(len(cloud_masked), self.num_point, replace=False)
        else:
            idxs1 = np.arange(len(cloud_masked))
            idxs2 = np.random.choice(len(cloud_masked), self.num_point - len(cloud_masked), replace=True)
            idxs = np.concatenate([idxs1, idxs2], axis=0)
        cloud_sampled = cloud_masked[idxs] #15000,3
        color_sampled = color_masked[idxs]

        cloud = o3d.geometry.PointCloud()
        cloud.points = o3d.utility.Vector3dVector(cloud_masked.astype(np.float32))
        cloud.colors = o3d.utility.Vector3dVector(color_masked.astype(np.float32)) #51w points

        ret_dict = {'point_clouds': cloud_sampled.astype(np.float32),
                    'coors': cloud_sampled.astype(np.float32) / self.voxel_size,
                    'feats': np.ones_like(cloud_sampled).astype(np.float32),
                    }
        return ret_dict,cloud,point_left_up,point_right_bottom


    def get_grasp2camera(self,data_input,cloud_,point_left_up,point_right_bottom):
        batch_data = minkowski_collate_fn([data_input])
        net = GraspNet(seed_feat_dim=self.seed_feat_dim, is_training=False)
        device = torch.device("cuda:0" if torch.cuda.is_available() else "cpu")
        net.to(device)
       
        # Load checkpoint
        checkpoint = torch.load(self.checkpoint_path)
        net.load_state_dict(checkpoint['model_state_dict'])
        start_epoch = checkpoint['epoch']
        print("-> loaded checkpoint %s (epoch: %d)" % (self.checkpoint_path, start_epoch))

        net.eval()

        for key in batch_data:
            if 'list' in key:
                for i in range(len(batch_data[key])):
                    for j in range(len(batch_data[key][i])):
                        batch_data[key][i][j] = batch_data[key][i][j].to(device)
            else:
                batch_data[key] = batch_data[key].to(device)
       
        # Forward pass
        with torch.no_grad():
            end_points = net(batch_data)
            grasp_preds = pred_decode(end_points) #1024,17
        preds = grasp_preds[0].detach().cpu().numpy()
        gg = GraspGroup(preds)

        # collision detection
        if self.collision_thresh > 0:
            cloud = data_input['point_clouds']
            mfcdetector = ModelFreeCollisionDetector(cloud, voxel_size=self.voxel_size_cd)
            collision_mask = mfcdetector.detect(gg, approach_dist=0.05, collision_thresh=self.collision_thresh)
            gg = gg[~collision_mask]
        if len(gg)==0:
            print("detect nothing or have no grasp pose.")
            return False
        gg.nms()
        gg.sort_by_score()
        if len(gg)>50:
            gg = gg[:50]

        # grasp pose is in workspace?
        # TODO begin
        for i in range(len(gg)-1,-1,-1):
            if gg[i].translation[0]< point_left_up[0]+0.02 or gg[i].translation[0] >point_right_bottom[0]-0.02\
                    or gg[i].translation[1]<point_left_up[1]+0.02 or gg[i].translation[1]>point_right_bottom[1]-0.02:
                gg.remove(i)
        # TODO end

        if len(gg)==0:
            print("detect nothing or have no grasp pose ")
            return False
        gg.sort_by_score()
        #grippers = gg.to_open3d_geometry_list()
        #grippers[0].paint_uniform_color([0, 1, 0])  # the best score grasp pose's color  is green
        #o3d.visualization.draw_geometries([cloud_, *grippers])

        return gg

    def get_grasp2base(self,gg):
        # grasp pose transform
        cam2robot = self.arm.cam2base_H
        R_grasp2camera, t_grasp2camera = gg[0].rotation_matrix, gg[0].translation
        rot_y_0point5pi = np.array([[0, 0, 1], [0, 1, 0], [-1, 0, 0]])
        t_grasp2camera.shape = (1, 3)
        grasp2camera = np.concatenate( 
            (np.concatenate((R_grasp2camera, t_grasp2camera.T), axis=1), np.array([[0, 0, 0, 1]])), axis=0)
        # print(f"primitive grasp2camera:{ur_robot.R2rpy(R_grasp2camera)*57.3}")
        grasp2robot = np.dot(cam2robot, grasp2camera)

        t_grasp2robot = grasp2robot[0:3, 3]
        R_grasp2robot = grasp2robot[0:3, 0:3]
        R_grasp2robot = np.dot(R_grasp2robot, rot_y_0point5pi)
        rpy_grasp2robot = self.arm.R2rpy(R_grasp2robot)
        print(f"t_grasp2robot:{t_grasp2robot}")
        # TODO begin
        print(f"rpy_grasp2robot:{rpy_grasp2robot * 57.3}")
        # TODO end

        # TODO begin
        width = gg[0].width * 10 + 0.05
        if width > 0.85:
            width = 0.85
        elif width < 0.4:
            width = 0.4
        # TODO end

        # real grasp
        t_grasp2robot = t_grasp2robot.tolist()
        rpy_grasp2robot = rpy_grasp2robot.tolist()

        return t_grasp2robot,rpy_grasp2robot,width
    
        # success = True
        # success = ur_robot.grasp_ros(t_grasp2robot, rpy_grasp2robot, open_size=width)  # 6-dof
        # return success

    def get_grasp(self):
        data_dict, cloud, point_left_up, point_right_bottom = self.process_data()
        gg = self.get_grasp2camera(data_dict, cloud, point_left_up, point_right_bottom)
        t_grasp2robot,rpy_grasp2robot,width = self.get_grasp2base(gg)
        return t_grasp2robot,rpy_grasp2robot,width