#!/bin/bash
#Fedora
echo "Would you like to install Video and Audio Editing software?"
echo "Kdenlive, Audacity"
set -- $(locale LC_MESSAGES)
yesexpr="$1"; noexpr="$2"; yesword="$3"; noword="$4"
while true; do
    read -p "(${yesword} / ${noword})? " yn
    if [[ "$yn" =~ $yesexpr ]]; then sudo dnf -y install kdenlive audacity; break; fi
    if [[ "$yn" =~ $noexpr ]]; then echo Declined;break; fi
    echo "Answer ${yesword} / ${noword}."
done

#Fedora
echo "Would you like to install 3D Modeling software?"
echo "Blender"
set -- $(locale LC_MESSAGES)
yesexpr="$1"; noexpr="$2"; yesword="$3"; noword="$4"
while true; do
    read -p "(${yesword} / ${noword})? " yn
    if [[ "$yn" =~ $yesexpr ]]; then sudo dnf -y install blender; break; fi
    if [[ "$yn" =~ $noexpr ]]; then echo Declined;break; fi
    echo "Answer ${yesword} / ${noword}."
done

#Fedora
echo "Would you like to install low-poly 3D Modeling software?"
echo "Blockbench"
set -- $(locale LC_MESSAGES)
yesexpr="$1"; noexpr="$2"; yesword="$3"; noword="$4"
while true; do
    read -p "(${yesword} / ${noword})? " yn
    if [[ "$yn" =~ $yesexpr ]]; then flatpak -y install net.blockbench.Blockbench; break; fi
    if [[ "$yn" =~ $noexpr ]]; then echo Declined;break; fi
    echo "Answer ${yesword} / ${noword}."
done

#Fedora
echo "Would you like to install Drawing software?"
echo "Krita"
set -- $(locale LC_MESSAGES)
yesexpr="$1"; noexpr="$2"; yesword="$3"; noword="$4"
while true; do
    read -p "(${yesword} / ${noword})? " yn
    if [[ "$yn" =~ $yesexpr ]]; then sudo dnf -y install krita; break; fi
    if [[ "$yn" =~ $noexpr ]]; then echo Declined;break; fi
    echo "Answer ${yesword} / ${noword}."
done

#Fedora
echo "Would you like image manipulation software?"
echo "GNU Image Manipulation Program(GIMP)"
set -- $(locale LC_MESSAGES)
yesexpr="$1"; noexpr="$2"; yesword="$3"; noword="$4"
while true; do
    read -p "(${yesword} / ${noword})? " yn
    if [[ "$yn" =~ $yesexpr ]]; then sudo dnf -y install gimp; break; fi
    if [[ "$yn" =~ $noexpr ]]; then echo Declined;break; fi
    echo "Answer ${yesword} / ${noword}."
done

#Flatpak
echo "Would you like to install Photography software?"
echo "RapidRAW"
set -- $(locale LC_MESSAGES)
yesexpr="$1"; noexpr="$2"; yesword="$3"; noword="$4"
while true; do
    read -p "(${yesword} / ${noword})? " yn
    if [[ "$yn" =~ $yesexpr ]]; then flatpak -y install io.github.CyberTimon.RapidRAW; break; fi
    if [[ "$yn" =~ $noexpr ]]; then echo Declined;break; fi
    echo "Answer ${yesword} / ${noword}."
done

  echo "Installed artist applications"
  sleep 3
