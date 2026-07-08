#!/bin/bash
  echo ""
  echo "Is your Nvidia Graphics Card a GTX16 or RTX series?"
set -- $(locale LC_MESSAGES)
yesexpr="$1"; noexpr="$2"; yesword="$3"; noword="$4"
while true; do
    read -p "(${yesword} / ${noword})? " yn
    if [[ "$yn" =~ $yesexpr ]]; then sudo dnf -y install akmod-nvidia xorg-x11-drv-nvidia-cuda libva-nvidia-driver libva-utils vdpauinfo;break; fi
    if [[ "$yn" =~ $noexpr ]]; then sudo dnf install akmod-nvidia-580xx xorg-x11-drv-nvidia-580xx xorg-x11-drv-nvidia-580xx-cuda;break; fi
    echo "Answer ${yesword} / ${noword}."
done
  echo "Nvidia Graphics Drivers installed"
  sleep 3
sudo mkdir /etc/environment.d
sudo rm /etc/environment
sudo rm /etc/environment /etc/environment.d/99-mesa-shaders-boost.conf

sudo echo "# Increase Nvidia shader cache size to 10GB
__GL_SHADER_DISK_CACHE_SIZE=10000000000" | sudo tee -a /etc/environment
sudo ln -s /etc/environment /etc/environment.d/99-nvidia-shaders-boost.conf
echo "GPU shader cache increased to 10GB."
  sleep 3

echo "Nvidia Drivers installed, please wait at least 15 minutes before restarting to avoid system breakage."


