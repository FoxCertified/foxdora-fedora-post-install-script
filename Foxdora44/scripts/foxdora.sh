#!/bin/bash
###BASIC SCRIPT START
  echo "Script starting in three seconds..."
  sleep 3
##dnf: ADD RPMFUSION
sudo dnf -y install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf config-manager setopt fedora-cisco-openh264.enabled=1
  echo "Added RPM Fusion repositories to DNF"
##dnf: ADD TERRA
sudo dnf -y install --nogpgcheck --repofrompath 'terra,https://repos.fyralabs.com/terra$releasever' terra-release
sudo dnf -y config-manager enable terra #fallback
  echo "Added Terra repositories to DNF"
##flatpak: ADD FLATHUB, DISABLE FEDORA
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak remote-modify --enable flathub
flatpak remote-modify --disable fedora
  echo "Enabled Flathub repo for Flatpak"

##UPDATE
sudo dnf -y update --refresh
flatpak -y update
sudo dnf -y group upgrade core
  echo "Latest updates installed"
  sleep 3

#Terra
sudo dnf -y install terra-release-mesa
#Fedora
sudo dnf -y group install multimedia
sudo dnf install gstreamer1-plugin-openh264 mozilla-openh264
##RPMFusion
sudo dnf -y swap ffmpeg-free ffmpeg --allowerasing
sudo dnf -y update @multimedia --setopt="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin

sudo dnf -y update --refresh
flatpak -y upgrade
  echo "Multimeda support enabled"
  sleep 3

sudo cp /etc/dnf/dnf.conf ./files/backup/dnf.conf.bu
sudo chown $USER:$USER ./files/backup/dnf.conf.bu
  echo "Created backup of dnf.conf in ./files/backup"
echo "defaultyes=True" | sudo tee -a /etc/dnf/dnf.conf
  echo "DNF tweaks applied"
  sleep 3

sudo mkdir /etc/environment.d

sudo echo "# Increase MESA shader cache size to 10GB
MESA_SHADER_CACHE_MAX_SIZE=10G" | sudo tee -a /etc/environment
sudo ln -s /etc/environment /etc/environment.d/99-mesa-shaders-boost.conf
echo "GPU shader cache increased to 10GB."
  sleep 3

wget https://github.com/googlefonts/noto-emoji/raw/main/fonts/Noto-COLRv1.ttf
sudo mkdir -p /usr/local/share/fonts/Noto-COLRv1
sudo cp ./Noto-COLRv1.ttf /usr/local/share/fonts/Noto-COLRv1/
rm ./Noto-COLRv1.ttf
  echo "Applied emoji fallback font for Unicode 17"
  sleep 3

##Fedora
sudo dnf -y install kate flatseal gnome-disk-utility btrfs-assistant gparted
sudo dnf -y remove kwrite
##Flatpak
flatpak -y install it.mijorus.gearlever
  echo ""
  echo "Installed main utilities"
  sleep 3

##Fedora
sudo dnf -y install zsh zsh-syntax-highlighting fastfetch
##FoxFetch Theme
mkdir ~/.config/fastfetch
cp ./files/fastfetch/config.jsonc ~/.config/fastfetch
cp ./files/fastfetch/launch-term.jsonc ~/.config/fastfetch
##Load customizations in zshrc and bash
cp ./files/!.zshrc ~/.zshrc
cp ./files/!.bashrc ~/.bashrc
chsh -s $(which zsh)
  echo ""
  echo "Defaulted shell to zsh for colored syntax highlighting in the terminal"
  sleep 3
###BASIC SCRIPT

##Gaming Apps
echo ""
echo "Would you like install all gaming applications, such as Steam and related tools?"
set -- $(locale LC_MESSAGES)
yesexpr="$1"; noexpr="$2"; yesword="$3"; noword="$4"
while true; do
    read -p "(${yesword} / ${noword})? " yn
    if [[ "$yn" =~ $yesexpr ]]; then echo "Accepted";./scripts/gaming-meta.sh; break; fi
    if [[ "$yn" =~ $noexpr ]]; then echo "Declined";break; fi
    echo "Answer ${yesword} / ${noword}."
done

##Artist Apps
echo ""
echo "Would you like to install any artist applications? You will be asked which ones you would like to install."
set -- $(locale LC_MESSAGES)
yesexpr="$1"; noexpr="$2"; yesword="$3"; noword="$4"
while true; do
    read -p "(${yesword} / ${noword})? " yn
    if [[ "$yn" =~ $yesexpr ]]; then echo "Accepted";./scripts/artist-meta.sh; break; fi
    if [[ "$yn" =~ $noexpr ]]; then echo "Declined";break; fi
    echo "Answer ${yesword} / ${noword}."
done

##Extra Applications
echo ""
echo "Would you like to install any additional applications, such as OBS Studio or Vivaldi Web Browser?"
set -- $(locale LC_MESSAGES)
yesexpr="$1"; noexpr="$2"; yesword="$3"; noword="$4"
while true; do
    read -p "(${yesword} / ${noword})? " yn
    if [[ "$yn" =~ $yesexpr ]]; then echo "Accepted";./scripts/extra-app-meta.sh; break; fi
    if [[ "$yn" =~ $noexpr ]]; then echo "Declined";break; fi
    echo "Answer ${yesword} / ${noword}."
done

##MullvadVPN
echo ""
echo "Would you like to install MullvadVPN?"
set -- $(locale LC_MESSAGES)
yesexpr="$1"; noexpr="$2"; yesword="$3"; noword="$4"
while true; do
    read -p "(${yesword} / ${noword})? " yn
    if [[ "$yn" =~ $yesexpr ]]; then echo "Accepted";./scripts/mullvad-install.sh; break; fi
    if [[ "$yn" =~ $noexpr ]]; then echo "Declined";break; fi
    echo "Answer ${yesword} / ${noword}."
done

echo ""
echo "You can find additional scripts to run in the Extra Scripts folder!"
echo "Please restart for all changes to take effect. If you have a Nvidia graphics card, run install 'install-nvidia-drivers.sh' after restart to install the drivers."
