#!/bin/bash
sudo dnf -y copr enable faugus/faugus-launcher
sudo dnf -y install faugus-launcher
  echo "Installed Faugus Launcher for using Proton in non-steam"
#Fedora
sudo dnf -y install steam gamemode mangohud discord goverlay gamemode.i686 mangohud.i686
sudo gpasswd -a $USER gamemode
  echo "Added user to gamemode group"
#Flatpak
flatpak -y install com.vysp3r.ProtonPlus org.prismlauncher.PrismLauncher

  echo "Installed gaming applications"
  sleep 3
