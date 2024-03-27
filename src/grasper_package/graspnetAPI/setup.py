from distutils.core import setup
from setuptools import find_packages
from setuptools.command.install import install
import os

setup(
    name='graspnetAPI',
    version='1.2.10',
    description='graspnet API',
    author='Hao-Shu Fang, Chenxi Wang, Minghao Gou',
    author_email='gouminghao@gmail.com',
    url='https://graspnet.net',
    packages=find_packages(),
    install_requires=[
        'numpy',
        'scipy',
        'transforms3d==0.3.1',
        'open3d>=0.8.0.0',
        'trimesh',
        'tqdm',
        'Pillow',
        'opencv-python',
        'pillow',
        'matplotlib',
        'pywavefront',
        'trimesh',
        'scikit-image',
        'autolab_core',
        'autolab-perception',
        'cvxopt', # !!!
        'dill',
        'h5py',
        'scikit-learn',
        'grasp_nms'
    ]
)

# install cvxopt!!!
# if pip
# $ sudo apt install libsuitesparse-dev  # per installation instructions cited above
# $ export CPPFLAGS="-I/usr/include/suitesparse"  # <-- NEW STEP
# $ pip install cvxopt
# else conda
# $ conda install -c conda-forge cvxopt

# install ipython!!!
# $ pip install ipython

# cannot allocate memory in static TLS block
# export LD_PRELOAD=/home/rm/anaconda3/envs/contact_graspnet/lib/python3.8/site-packages/scikit_learn.libs/libgomp-d22c30c5.so.1.0.0
# refer:https://stackoverflow.com/questions/70446215/torch-lib-libgomp-d22c30c5-so-1-cannot-allocate-memory-in-static-tls-block

# install MinkowskiEngine!!!
# $ git clone https://github.com/NVIDIA/MinkowskiEngine.git
# cd MinkowskiEngine
# export CXX=g++-7
# python setup.py install --blas_include_dirs=${CONDA_PREFIX}/include --blas=openblas
# refer:https://github.com/NVIDIA/MinkowskiEngine

# install pytorch_utils!!!
# pip install pytorch_utils

python setup.py install