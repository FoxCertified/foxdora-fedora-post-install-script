#!/bin/bash
clear
echo "    __________ _  __ ____  ____  ____  ___       __ __  __ __";
echo "   / ____/ __ \\ |/ // __ \\/ __ \\/ __ \\/   |     / // / / // /";
echo "  / /_  / / / /   // / / / / / / /_/ / /| |    / // /_/ // /_";
echo " / __/ / /_/ /   |/ /_/ / /_/ / _, _/ ___ |   /__  __/__  __/";
echo "/_/    \\____/_/|_/_____/\\____/_/ |_/_/  |_|     /_/    /_/   ";
echo "                                                             ";
echo ""
echo "A Post-Install Script for Fedora Linux 44!"
echo ""
echo "The following will be done:"
echo "  Install the latest updates"
echo "  Enables RPM Fusion repositories in DNF"
echo "  Enables Terra repositories in DNF"
echo "  Enables Flathub in Flatpak"
echo "  Enables full Multimedia support"
echo "  Applies quality of life tweaks to DNF and increases graphics card cache for smoother gameplay"
echo "  Applies emoji fallback font for Unicode 17"
echo "  Installs helpful system utilities such as BTRFS Assistant"
echo "  Defaults shell to zsh for colored syntax highlighting in the terminal"
echo ""
echo "You can opt into:"
echo "  Installing gaming applications, such as Steam and Faugus Launcher."
echo "  Installing artist applications, such as Krita or Blender."
echo "  Installing extra applications, such as Vivaldi Web Browser or openRGB"
echo ""
echo "You will be asked for your password several times, depending on internet connection and system speed."
echo "If it times out when asking for your password, the script can be safely reran."
echo ""
echo "Do you want to run the script?"
set -- $(locale LC_MESSAGES)
yesexpr="$1"; noexpr="$2"; yesword="$3"; noword="$4"
while true; do
    read -p "(${yesword} / ${noword})? " yn
    if [[ "$yn" =~ $yesexpr ]]; then ./scripts/foxdora.sh;break; fi
    if [[ "$yn" =~ $noexpr ]]; then echo "Script Cancelled";exit; fi
    echo "Answer ${yesword} / ${noword}."
done
