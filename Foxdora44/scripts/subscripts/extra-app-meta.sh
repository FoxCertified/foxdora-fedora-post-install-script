#!/bin/bash

#Vivialdi Web Browser
echo ""
echo "Would you like to install Vivaldi web browser?"
set -- $(locale LC_MESSAGES)
yesexpr="$1"; noexpr="$2"; yesword="$3"; noword="$4"
while true; do
    read -p "(${yesword} / ${noword})? " yn
    if [[ "$yn" =~ $yesexpr ]]; then echo "Accepted";./scripts/subscripts/vivaldi-install.sh; break; fi
    if [[ "$yn" =~ $noexpr ]]; then echo "Declined";break; fi
    echo "Answer ${yesword} / ${noword}."
done

#Fedora
echo "Would you like to install OBS Studio for video recording and broadcasting?"
echo "OBS Studio"
set -- $(locale LC_MESSAGES)
yesexpr="$1"; noexpr="$2"; yesword="$3"; noword="$4"
while true; do
    read -p "(${yesword} / ${noword})? " yn
    if [[ "$yn" =~ $yesexpr ]]; then sudo dnf -y install obs-studio obs-studio-plugin-vkcapture; break; fi
    if [[ "$yn" =~ $noexpr ]]; then echo Declined;break; fi
    echo "Answer ${yesword} / ${noword}."
done

#Flatpak
echo "Would you like to install EasyEffects, an alternative to Nvidia Broadacast?"
echo "EasyEffects"
set -- $(locale LC_MESSAGES)
yesexpr="$1"; noexpr="$2"; yesword="$3"; noword="$4"
while true; do
    read -p "(${yesword} / ${noword})? " yn
    if [[ "$yn" =~ $yesexpr ]]; then flatpak -y install com.github.wwmm.easyeffects; break; fi
    if [[ "$yn" =~ $noexpr ]]; then echo Declined;break; fi
    echo "Answer ${yesword} / ${noword}."
done

#Fedora
echo "Would you like to install Video Downloader?"
echo "Video Downloader"
set -- $(locale LC_MESSAGES)
yesexpr="$1"; noexpr="$2"; yesword="$3"; noword="$4"
while true; do
    read -p "(${yesword} / ${noword})? " yn
    if [[ "$yn" =~ $yesexpr ]]; then sudo sudo dnf -y install video-downloader; break; fi
    if [[ "$yn" =~ $noexpr ]]; then echo Declined;break; fi
    echo "Answer ${yesword} / ${noword}."
done

##MullvadVPN
echo ""
echo "Would you like to install MullvadVPN?"
set -- $(locale LC_MESSAGES)
yesexpr="$1"; noexpr="$2"; yesword="$3"; noword="$4"
while true; do
    read -p "(${yesword} / ${noword})? " yn
    if [[ "$yn" =~ $yesexpr ]]; then echo "Accepted";./scripts/subscripts/mullvad-install.sh; break; fi
    if [[ "$yn" =~ $noexpr ]]; then echo "Declined";break; fi
    echo "Answer ${yesword} / ${noword}."
done
