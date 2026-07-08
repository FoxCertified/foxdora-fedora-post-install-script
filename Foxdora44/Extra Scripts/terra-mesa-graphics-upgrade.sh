#!/bin/bash
sudo dnf -y install --nogpgcheck --repofrompath 'terra,https://repos.fyralabs.com/terra$releasever' terra-release
sudo dnf -y update --refresh
  echo ""
  echo "Installed the latest MESA Drivers"
  sleep 3
./scripts/nvidia-shader-boost.sh
