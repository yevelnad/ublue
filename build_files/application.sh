#!/usr/bin/bash

set -eoux pipefail

dnf5 -y group install @gnome-desktop

dnf5 -y install \
    distrobox \
    git \
    fastfetch \
    nvim \

dnf5 -y remove \
    fedora-flathub-remote \
    fedora-third-party \
    fedora-workstation-repositories

sudo systemctl set-default graphical.target
