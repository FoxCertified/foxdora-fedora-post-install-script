# THIS IS A WORK IN PROGRESS AND SUBJECT TO CHANGE
# Foxdora 44, a post-install script for Fedora 44
![Foxdora 44 Banner](https://github.com/FoxCertified/foxdora-fedora-post-install-script/blob/main/Foxdora44.png?raw=true)
#### Why?
The goal of this script is minimizing Fedora's rough points with things such as the media codecs, as well as avoiding terminal usage in the future. The terminal is still tweaked for those that would wish to use it, or in the event an issue requires you to use it.

I originally made this to quickly spin up new Fedora installs, often for people who didn't want to use the terminal(or knew what it was).
#### When will it be released?
When it's ready, which is rather soon.
# Download Fedora Linux here:
 - [Fedora KDE Plasma Desktop](https://fedoraproject.org/kde/) (Recommended)
 - [Fedora Workstation(GNOME)](https://fedoraproject.org/workstation/)
 - [Fedora Spins](https://fedoraproject.org/spins/)

# How to run the script:
 1. [Releasing soon!](#)
 2. Move ***Foxdora44-X.X.tar.gz*** to your Home folder
 3. Right click on ***Foxdora44-X.X.tar.gz*** and select Extract>Extract Here, go into the folder.
 4.  Right click on empty space and navigate to Actions>Open Terminal Here.
 5.  Start the script by typing `./start-foxdora.sh` into the terminal and pressing enter.
# Alternative 1
 6. Open your terminal application
 7. `wget https://github.com/FoxCertified/foxdora-fedora-post-install-script/releases/download/test/Foxdora44-0.1.tar.gz && tar xf ./Foxdora44-0.1.tar.gz && cd ./Foxdora44`
 8. Start the script by typing `./start-foxdora.sh` into the terminal and pressing enter.
# Alternative 2
 9. `git clone https://github.com/FoxCertified/foxdora-fedora-post-install-script.git`

  
# What does it do?

#### System Changes:
 - Installs the latest system updates.
 - The RPM Fusion repositories are enabled alongside Flathub for Flatpak.
 - The Fedora Flatpak source is disabled, as Flathub has everything it has and more.
 - Third-party codecs that Fedora can not include by default are installed from RPM Fusion.
 - Installs the latest Noto Emoji Fonts, which includes Emoji Unicode 17 support. Long Live 🫪
 - User choice, Install the Nvidia drivers, GTX 800/900/10/16 and RTX20/30/40/50 Supported.

#### Quality of Life
 - Helpful system utilities are installed to assist in minimizing future terminal usage.
	 - Bazaar, a dedicated app store for Flatpak applications.
	 - Flatseal, for adjusting Flatpak application permissions.
	 - Gearlever, for AppImage management.
	 - GNOME DISK, for assigning ownership of drives to yourself without the terminal.
	 - BTRFS Assistant, for managing snapshots(backups) using the BTRFS file system.
 - Several Terminal Adjustments:
	 - Shell is defaulted to zsh, enables terminal colored syntax highlighting and auto completion.
	 - DNF is tweaked so that the default input for Enter is "Yes" in Y/N questions.
	 - Help aliases added to zsh(and Bash!), [listed below](#terminal-aliasesfor-zsh-and-bash).
	 - The [FoxFetch](#foxfetch--theme) Fastfetch theme is installed.

#### Performance 
 - AMD and Nvidia graphics card cache is increased to 10GB to reduce shader stutter, this is best paired with turning off vulkan pre-compile in Steam.

#### Applications List

 - Installs the following applications:
	 - [zsh](https://www.zsh.org) - a fast terminal shell with auto completion.
		 - [Zsh Syntax Highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) - for syntax highlighting.
		 - [Fastfetch](https://github.com/fastfetch-cli/fastfetch) - displays system specs and other information.
	 - [BTRFS Assistant](https://gitlab.com/btrfs-assistant/btrfs-assistant) - BTRFS management software.
	 - [GNOME Disk](https://apps.gnome.org/DiskUtility/) - the GNOME Partition Manager.
	 - [Bazaar](https://github.com/bazaar-org/bazaar) - Flatpak App Store
		 - [Flatseal](https://github.com/tchx84/flatseal) - Flatpak Permission management.
	 - [Gearlever](https://github.com/mijorus/gearlever) - AppImage management.
	 - [Kate Text Editor](https://kate-editor.org) - Simple and Advanced text editor. Replaces Kwrite in KDE Plasma installs.
 - User Choice, install all listed gaming applications and tools:
	 - [Steam](https://store.steampowered.com) - for Steam games.
	 - [Faugus Launcher](https://github.com/Faugus/faugus-launcher) - for non-Steam games.
	 - [Prism Launcher](https://prismlauncher.org) - A minecraft launcher.
	 - [Discord](https://discord.com) - Chatting Application.
	 - [Gamemode](https://github.com/feralinteractive/gamemode) - Automates a few nice to haves for gaming on Linux.
	 - [Mangohud](https://github.com/flightlessmango/Mangohud) - Performance overlay and FPS limiter, similar to [RivaTuner Statistics Server](https://www.guru3d.com/page/rivatuner-rtss-homepage/).
		 - [Goverlay](https://github.com/benjamimgois/goverlay) - GUI for setting up mangohud.
	 - [Proton Plus](https://protonplus.vysp3r.com) - Easy management for Proton and Steam launch commands.
 - User Choice, You can choose to install the following creative applications:
	 - [KdenLive](https://kdenlive.org) - Non-linear video editor.
	 - [Audacity](https://www.audacityteam.org) - Audio recording and editing.
	 - [Blender](https://www.blender.org) - Advanced 3D Modeling software.
	 - [Blockbench](https://www.blockbench.net) - 3D Modeling software specialized for low-poly work.
	 - [Krita](https://krita.org) - Digital Painting software.
	 - [GNU Image Manipulation Program(GIMP)](https://www.gimp.org) - Photo Manipulation software.
	 - [RapidRAW](https://github.com/cybertimon/rapidraw) - Nondestructive photography post-processing software.
 - User Choice, You can choose to install the following applications:
	 - [Vivaldi](https://vivaldi.com) - Privacy first web browser based on Chromium with a built-in adblocker.
	 - [OBS Studio](https://obsproject.com) - recording and broadcasting software.
	 - [Easy Effects](https://github.com/wwmm/easyeffects) - can filter speaker ouput and microphone input for voice calls. Similar to Nvidia Broadcast.
	 - [Video Downloader](https://github.com/Unrud/video-downloader) - easy downloading of videos you find on the internet, runs on your machine!
	 - [MullvadVPN](https://mullvad.net) - a low-cast VPN service. €5/month, including VAT.

## Examples

### Terminal aliases(for zsh and bash)
#### Custom Helpers
 - foxupdater
   - `sudo dnf update` and `flatpak update` - Updates native and Flatpak packages back to back.
 - foxfetch
   - `fastfetch` - Displays system spec and other information.
 - clearfox
   - `clear && fastfetch` - The same as `foxfetch` but it clears the terminals before displaying.
 - installfont
   - Downloads the latest version of the fallback font and re-installs it, for future emoji releases.
 - removefont
   - Uninstalls the emoji fallback font, for debugging.
#### Full DNF Alias set:
 -  foxse [search term]
	 - `dnf search [search term]`
 -  foxin [program name]
	 - `sudo dnf install [program name]`
 -  foxrm [program name]
	 - `sudo dnf remove [program name]`
 -  refoxin [program name]
	 - `sudo dnf reinstall [program name]`
 -  swapfox [program name] [program name]
	 - `sudo dnf swap [program name] [program name]`
 -  foxlist
	 - `dnf repolist`
 -  foxinfo [repo name]
	 - `dnf list --installed | grep [repo name]`

### [FoxFetch  Theme](https://github.com/FoxCertified/foxfetch-theme)
![FastFetch Display Output](https://github.com/FoxCertified/foxfetch-theme/blob/main/Foxfetch%20with%20Logo.png?raw=true)

## Project status

I will keep working on this as long as I keep using Fedora :)

## WARNING(Effectively Legal Boilerplate)
These scripts are provided as-is, I can not be held responsible for them causing any system breakage.
