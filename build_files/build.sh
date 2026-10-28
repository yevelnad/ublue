#!/bin/bash

set -ouex pipefail

# Copy the contents of system_files/ of the git repo to /
cp -avf "/ctx/system_files"/. /

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/43/x86_64/repoview/index.html&protocol=https&redirect=1
dnf5 install -y 'dnf5-command(copr)'
# this installs a package from fedora repos
#dnf5 install -y \
#    tmux \
#    plasma-login-manager \
#    noctalia \
#    podman \
#    distrobox \
#    nautilus \
# Helium Browser
dnf5 -y copr enable imput/helium
dnf5 install -y \
    helium-bin \

dnf5 -y copr disable imput/helium
# Hyperland
dnf5 -y copr enable lionheartp/Hyprland
dnf5 install -y hyprland \
    hyprland-guiutils \

dnf5 -y copr disable lionheartp/Hyprland
#### Example for enabling a System Unit File
sudo dnf -y install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf -y install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf -y swap ffmpeg-free ffmpeg --allowerasing
sudo dnf -y install @multimedia --setopt="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin
sudo dnf -y install intel-media-driver
#
sudo systemctl set-default graphical.target
systemctl enable podman.socket
