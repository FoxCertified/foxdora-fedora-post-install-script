
# Foxdora 44 Post-Install Script for Fedora 44
![Foxdora 44 Banner](https://github.com/FoxCertified/foxdora-fedora-post-install-script/blob/main/Foxdora44.png)

## How to run the script:

 1. [Download latest release](https://github.com/FoxCertified/foxdora-fedora-post-install-script/releases/download/release/Foxdora_44_Post-Install_Script.tar.gz)
 2. Move ***Foxdora_44_Post-Install_Script.tar.gz*** to your Home folder
 3. Right click on ***Foxdora_44_Post-Install_Script.tar.gz*** and select Extract>Extract Here, go into the folder.
 4.  Right click on empty space and navigate to Actions>Open Terminal Here.
 5.  Start the script by typing `./start-foxdora.sh` into the terminal and pressing enter.

  
# What does it do?

##### The following will be done:

- Install the latest updates

- Enables RPM Fusion repositories in DNF

- Enables Flathub in Flatpak

- Enables full Multimedia support

- Applies quality of life tweaks to DNF and increases graphics card cache for smoother gameplay

- Applies emoji fallback font for Unicode 17

- Installs helpful system utilities such as BTRFS Assistant

- Defaults shell to zsh for colored syntax highlighting in the terminal

##### You can opt into:

 - Installing the Nvidia Graphics Drivers, GTX 800/900/10/16 and RTX20/30/40/50 Supported

 - Installing extra utility applications

 - Installing Vivaldi web browser

 - Installing MullvadVPN

 - Installing gaming applications

 - Installing artist applications, by category
#### System Changes:
 - Installs the latest system updates.
 - The RPM Fusion repositories are enabled alongside Flathub for Flatpak.
 - The Fedora Flatpak source is disabled, as Flathub has everything it has and more.
 - Third-party codecs that Fedora can not include by default are installed from RPM Fusion.
 - User choice: Install the Nvidia drivers, GTX 800/900/10/16 and RTX20/30/40/50 Supported.

#### Quality of Life
 - Helpful system utilities, such as BTRFS Assistant, are installed to assist in minimizing future terminal usage.
 - DNF is tweaked so that the default input for "Enter" is "Yes" in Y/N questions.
 - The user shell is changed to zsh in the terminal, enabling quality of life features such as colored syntax highlighting.

#### Performance 
 - The graphics card cache is increased to 10GB to reduce shader stutter, this is best paired with turning off vulkan pre-compile in Steam.

#### Applications

 - Installs the following applications:
   - [Zsh](https://www.zsh.org), [Zsh Syntax Highlighting](https://github.com/zsh-users/zsh-syntax-highlighting), [Fastfetch](https://github.com/fastfetch-cli/fastfetch)
   - [BTRFS Assistant](https://gitlab.com/btrfs-assistant/btrfs-assistant), [GNOME Disk](https://apps.gnome.org/DiskUtility/), [GParted](https://gparted.org)
   - [Bazaar](https://github.com/bazaar-org/bazaar), [Flatseal](https://github.com/tchx84/flatseal), [Gearlever](https://github.com/mijorus/gearlever)
   - [Kate Text Editor](https://kate-editor.org)
 - User Choice: You can install the following applications:
   - [Vivaldi Web Browser](https://vivaldi.com)
   - [MullvadVPN](https://mullvad.net)
 - User Choice: You can install the following Extra Utilities:
   - [OBS Studio](https://obsproject.com)
   - [Easy Effects](https://github.com/wwmm/easyeffects)
   - [Video Downloader](https://github.com/Unrud/video-downloader)
 - User Choice: You can install the following Gaming Applications:
   - [Steam](https://store.steampowered.com)
   - [Faugus Launcher](https://github.com/Faugus/faugus-launcher)
   - [Prism Launcher](https://prismlauncher.org)
   - [Discord](https://discord.com)
   - [Gamemode](https://github.com/feralinteractive/gamemode), [Mangohud](https://github.com/flightlessmango/Mangohud)
   - [Goverlay](https://github.com/benjamimgois/goverlay), [Proton Plus](https://protonplus.vysp3r.com)
 - User Choice: You can choose to install the following creative software:
   - [KdenLive](https://kdenlive.org), [Audacity](https://www.audacityteam.org)
   - [Blender](https://www.blender.org)
   - [Blockbench](https://www.blockbench.net)
   - [Krita](https://krita.org)
   - [GNU Image Manipulation Program(GIMP)](https://www.gimp.org)
   - [RapidRAW](https://github.com/cybertimon/rapidraw)

## Example

Depending on what you are making, it can be a good idea to include screenshots or even a video (you'll frequently see GIFs rather than actual videos). Tools like ttygif can help, but check out Asciinema for a more sophisticated method.
  

## Project status

I will keep working on this as long as I keep using Fedora :)
