#!/bin/bash
  echo ""
  echo "Is your Nvidia Graphics Card a GTX16 or RTX series?"
set -- $(locale LC_MESSAGES)
yesexpr="$1"; noexpr="$2"; yesword="$3"; noword="$4"
while true; do
    read -p "(${yesword} / ${noword})? " yn
    if [[ "$yn" =~ $yesexpr ]]; then sudo dnf install akmod-nvidia xorg-x11-drv-nvidia-cuda;break; fi
    if [[ "$yn" =~ $noexpr ]]; then sudo dnf install akmod-nvidia-580xx xorg-x11-drv-nvidia-580xx xorg-x11-drv-nvidia-580xx-cuda;break; fi
    echo "Answer ${yesword} / ${noword}."
done
  echo "Nvidia Graphics Drivers installed"
  sleep 3
./scripts/nvidia-shader-boost.sh
