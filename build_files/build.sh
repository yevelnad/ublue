#!/bin/bash

set -ouex pipefail

# Copy the contents of system_files/ of the git repo to /
cp -avf "/ctx/system_files"/. /

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/43/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
dnf5 install -y tmux \
    sddm \
    noctalia
# Helium Browser
dnf5 -y copr enable imput/helium
dnf5 install -y helium-bin
dnf5 -y copr disable imput/helium
# Hyperland
dnf5 -y copr enable lionheartp/Hyprland
dnf5 install -y hyperland \
    hyprland-guiutils
dnf5 -y copr disable lionheartp/Hyprland
#### Example for enabling a System Unit File
sudo systemctl set-default graphical.target
systemctl enable podman.socket
