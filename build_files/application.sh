#!/usr/bin/bash

set -eoux pipefail

sudo dnf install gnome-shell gdm nautilus gnome-console xdg-user-dirs xdg-user-dirs-gtk -y
sudo dnf install flatpak bash-completion -y
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
