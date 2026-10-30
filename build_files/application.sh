#!/usr/bin/bash

set -eoux pipefail

dnf5 -y install \
    flatpak \
    bash-completion

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

dnf5 -y install \
    distrobox \
    git \
    fastfetch \
    fish  \
    nvim \
    nautilus \
    ffmpegthumbnailer \

dnf5 -y remove \
    fedora-flathub-remote \
    fedora-third-party \
    fedora-workstation-repositories
