#!/usr/bin/bash

set -eoux pipefail

dnf5 -y install \
    noctalia \
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
