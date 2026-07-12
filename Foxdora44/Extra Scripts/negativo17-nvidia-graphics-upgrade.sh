#!/bin/bash
sudo dnf -y config-manager addrepo --from-repofile=https://negativo17.org/repos/fedora-nvidia.repo
sudo dnf -y update --refresh
sudo dnf -y remove \*nvidia\*
sudo dnf -y install nvidia-driver nvidia-driver-libs.i686 nvidia-settings nvidia-driver-cuda
# sudo dnf -y install nvidia-driver akmod-nvidia nvidia-driver-libs.i686 nvidia-settings nvidia-driver-cuda cuda-devel
  echo ""
  echo "Negativo17 Nvidia Graphics Drivers installed"
  sleep 3
