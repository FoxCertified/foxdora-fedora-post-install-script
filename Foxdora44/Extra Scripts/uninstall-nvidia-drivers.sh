#!/bin/bash
sudo dnf -y remove \*nvidia\*

sudo mkdir /etc/environment.d
sudo rm /etc/environment
sudo rm /etc/environment /etc/environment.d/99-mesa-shaders-boost.conf

sudo echo "# Increase MESA shader cache size to 10GB
MESA_SHADER_CACHE_MAX_SIZE=10G" | sudo tee -a /etc/environment
sudo ln -s /etc/environment /etc/environment.d/99-mesa-shaders-boost.conf
  sleep 3


echo "Nvidia drivers uninstalled, please restart for changes to take effect."
