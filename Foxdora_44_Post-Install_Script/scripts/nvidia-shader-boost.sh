#!/bin/bash
sudo touch /etc/environment
sudo echo "# Increase Nvidia shader cache size to 10GB
__GL_SHADER_DISK_CACHE_SIZE=10000000000" | sudo tee -a /etc/environment

sudo mkdir /etc/environment.d
sudo ln -s /etc/environment /etc/environment.d/99-nvidia-shaders-boost.conf
  echo "GPU shader cache increased to 10GB."
  sleep 3
