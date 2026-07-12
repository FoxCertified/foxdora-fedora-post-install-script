#!/bin/bash
##dnf: ADD Faugus COPR
sudo dnf -y copr enable faugus/faugus-launcher
##dnf: ADD AZUL JAVA
sudo dnf -y install https://cdn.azul.com/zulu/bin/zulu-repo-1.0.0-2.noarch.rpm

sudo dnf -y update --refresh
flatpak -y update

#Fedora and COPR
sudo dnf -y install steam faugus-launcher discord mangohud mangohud.i686 goverlay protontricks
#Terra
sudo dnf -y install prismlauncher zulu25-jre zulu21-jre zulu17-jre zulu8-jre
sudo dnf -y remove java-25-openjdk
sudo dnf -y remove gamemode
sudo dnf -y install falcond-gui falcond
sudo gpasswd -a $USER falcond
  echo "Added user to falcond group"
sudo systemctl enable falcond.service
sudo systemctl start falcond.service
  echo "Enabled falcond services"
#Flatpak
flatpak -y install com.vysp3r.ProtonPlus

  echo "Installed gaming applications"
  sleep 3
