#!/bin/bash
wget https://downloads.vivaldi.com/stable/vivaldi-stable-8.0.4033.54-1.x86_64.rpm
sudo dnf -y in ./vivaldi-stable-8.0.4033.54-1.x86_64.rpm
rm ./vivaldi-stable-8.0.4033.54-1.x86_64.rpm
sudo dnf -y update --refresh
  echo "Installed Vivaldi Web Browser"
  sleep 3
