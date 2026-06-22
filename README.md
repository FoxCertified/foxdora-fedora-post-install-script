



# Foxdora 44 Post-Install Script for Fedora 44
![Foxdora 44 Banner](https://github.com/FoxCertified/foxdora-fedora-post-install-script/blob/main/Foxdora44.png?raw=true)
#### What?
A Post-Install Script for Fedora Linux 44! 
#### Why?
The goal of this script is minimizing Fedora's rough points with things such as the media codecs, as well as avoiding terminal usage in the future. The terminal is still tweaked for those that would wish to use it, or in the event an issue requires you to use it.

I originally made this to quickly spin up new Fedora installs, often for people who didn't want to use the terminal(or even knew what one was).
#### When will it be released?
When it's ready, which is rather soon.
# Download Fedora Linux here:
 - [Fedora KDE Plasma Desktop](https://fedoraproject.org/kde/) (Recommended)
 - [Fedora Workstation(GNOME)](https://fedoraproject.org/workstation/)
 - [Fedora Spins](https://fedoraproject.org/spins/)

# How to run the script:
 1. [Releasing soon!](#)
 2. Move ***Foxdora_44_Post-Install_Script.tar.gz*** to your Home folder
 3. Right click on ***Foxdora_44_Post-Install_Script.tar.gz*** and select Extract>Extract Here, go into the folder.
 4.  Right click on empty space and navigate to Actions>Open Terminal Here.
 5.  Start the script by typing `./start-foxdora.sh` into the terminal and pressing enter.

  
# What does it do?

#### System Changes:
 - Installs the latest system updates.
 - The RPM Fusion repositories are enabled alongside Flathub for Flatpak.
 - The Fedora Flatpak source is disabled, as Flathub has everything it has and more.
 - Third-party codecs that Fedora can not include by default are installed from RPM Fusion.
 - Installs the latest Noto Emoji Fonts, which includes Emoji Unicode 17 support. Long Live 🫪
 - User choice: Install the Nvidia drivers, GTX 800/900/10/16 and RTX20/30/40/50 Supported.

#### Quality of Life
 - Helpful system utilities are installed to assist in minimizing future terminal usage.
	 - BTRFS Assistant, for managing snapshots(backups) using the BTRFS file system.
	 - GNOME DISK, for assigning ownership of drives to yourself without the terminal.
 - Several Terminal Adjustments:
	 - Shell is defaulted to zsh, enables terminal colored syntax highlighting and auto completion.
	 - DNF is tweaked so that the default input for Enter is "Yes" in Y/N questions.
	 - Help aliases added to zsh(and Bash!), [listed below](#terminal-aliasesfor-zsh-and-bash).
	 - The [FoxFetch](https://github.com/FoxCertified/foxfetch-theme) Fastfetch theme is installed.

#### Performance 
 - AMD and Nvidia graphics card cache is increased to 10GB to reduce shader stutter, this is best paired with turning off vulkan pre-compile in Steam.

#### Applications List

 - Installs the following applications:
   - [Zsh](https://www.zsh.org), [Zsh Syntax Highlighting](https://github.com/zsh-users/zsh-syntax-highlighting), [Fastfetch](https://github.com/fastfetch-cli/fastfetch)
   - [BTRFS Assistant](https://gitlab.com/btrfs-assistant/btrfs-assistant), [GNOME Disk](https://apps.gnome.org/DiskUtility/)
   - [Bazaar](https://github.com/bazaar-org/bazaar), [Flatseal](https://github.com/tchx84/flatseal), [Gearlever](https://github.com/mijorus/gearlever)
   - [Kate Text Editor](https://kate-editor.org), replaces Kwrite in KDE Plasma installs.
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
