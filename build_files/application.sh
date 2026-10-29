#!/usr/bin/bash

set -eoux pipefail

dnf5 -y install \
    sddm \
    nautilus \
    gnome-console \
    noctalia \
    layer-shell-qt \
    #plasma-workspace-x11 \
    #xdg-user-dirs \
    #xdg-user-dirs-gtk \
    #gnome-shell \
    #gdm \
dnf5 -y copr enable lionheartp/Hyprland && \
dnf5 -y install \
    hyprland \
    hyprland-guiutils \
    xdg-desktop-portal-hyprland &&\
dnf5 -y copr disable lionheartp/Hyprland


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
