import numpy as np

def pose_to_homogeneous_matrix(x, y, z, qx, qy, qz, qw):
    # 构建旋转矩阵
    q = np.array([qx, qy, qz, qw], dtype=np.float64)
    q /= np.linalg.norm(q)  # 归一化四元数
    q = np.roll(q, -1)  # 调整四元数顺序
    x, y, z, w = q
    rotation_matrix = np.array([
        [1 - 2*y**2 - 2*z**2, 2*x*y - 2*z*w, 2*x*z + 2*y*w, 0],
        [2*x*y + 2*z*w, 1 - 2*x**2 - 2*z**2, 2*y*z - 2*x*w, 0],
        [2*x*z - 2*y*w, 2*y*z + 2*x*w, 1 - 2*x**2 - 2*y**2, 0],
        [0, 0, 0, 1]
    ])
    
    # 构建平移向量
    translation_vector = np.array([x, y, z, 1]).reshape(4, 1)
    
    # 构建齐次矩阵
    homogeneous_matrix = np.eye(4)
    homogeneous_matrix[:3, :3] = rotation_matrix[:3, :3]
    homogeneous_matrix[:4, 3] = translation_vector.flatten()
    
    return homogeneous_matrix

homogeneous_matrix = pose_to_homogeneous_matrix(0.13490570,-0.14012117,0.01742696,0.26850076,-0.46325279,0.53220455,0.65579150)
np.savetxt('cam2base_H.csv', homogeneous_matrix, delimiter=',')

print(homogeneous_matrix)
