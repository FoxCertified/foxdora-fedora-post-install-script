#!/bin/bash
sudo dnf -y config-manager addrepo --from-repofile=https://repository.mullvad.net/rpm/stable/mullvad.repo
sudo dnf -y install mullvad-vpn
sudo systemctl start mullvad-daemon.service
sudo systemctl enable mullvad-daemon.service
  echo "Installed MullvadVPN"
  sleep 3
