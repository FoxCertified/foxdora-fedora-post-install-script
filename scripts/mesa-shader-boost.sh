#!/bin/bash
sudo mkdir /etc/environment.d
sudo touch /etc/environment
sudo echo "# Increase MESA shader cache size to 10GB
MESA_SHADER_CACHE_MAX_SIZE=10G" | sudo tee -a /etc/environment

sudo mkdir /etc/environment.d
sudo ln -s /etc/environment /etc/environment.d/99-mesa-shaders-boost.conf
  echo "GPU shader cache increased to 10GB."
  sleep 3
