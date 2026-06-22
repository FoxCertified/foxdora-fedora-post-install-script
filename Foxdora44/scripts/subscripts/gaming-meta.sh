#!/bin/bash
sudo dnf -y copr enable faugus/faugus-launcher
sudo dnf -y install faugus-launcher
  echo "Installed Faugus Launcher for using Proton in non-steam"
#Fedora
sudo dnf -y install steam gamemode mangohud discord goverlay
sudo dnf -y install gamemode.i686 mangohud.i686
  echo "Running gamemode post-install..."
sudo gpasswd -a $USER gamemode
sudo cp ./files/etc/gamemode.ini /etc/gamemode.ini
  echo "Completed gamemode post-install!"
#Flatpak
flatpak -y install com.vysp3r.ProtonPlus org.prismlauncher.PrismLauncher

  echo "Installed gaming applications"
  sleep 3
