#!/usr/bin/bash

set -eoux pipefail

dnf5 -y install \
    gnome-shell \
    gdm nautilus \
    gnome-console \
    xdg-user-dirs \
    xdg-user-dirs-gtk

dnf5 -y install \
    flatpak \
    bash-completion

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

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
