#!/bin/bash
ln -s /data/cuDNN/include/cudnn.h /usr/local/cuda-7.5/targets/x86_64-linux/include/cudnn.h
ln -s /data/cuDNN/lib64/libcudnn.so /usr/local/cuda-7.5/targets/x86_64-linux/lib/libcudnn.so
ln -s /data/cuDNN/lib64/libcudnn.so.5 /usr/local/cuda-7.5/targets/x86_64-linux/lib/ibcudnn.so.5
ln -s /data/cuDNN/lib64/libcudnn.so.5.0.5 /usr/local/cuda-7.5/targets/x86_64-linux/lib/libcudnn.so.505
ln -s /data/cuDNN/lib64/libcudnn_static.a /usr/local/cuda-7.5/targets/x86_64-linux/lib/libcudnn_static.a

echo /usr/local/cuda-7.5/targets/x86_64-linux/lib/ > /etc/ld.so.conf.d/cuda.conf

ldconfig -v | grep cuda

chown nimbix /etc/jupyter_notebook_config.py

chmod +x /usr/bin/startJupyter

rm /root/setup.sh
