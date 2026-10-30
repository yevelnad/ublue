#!/usr/bin/bash

set -eoux pipefail

dnf5 -y install \
    sddm \
    layer-shell-qt \
    qt6-qtsvg \
    qt6-qtvirtualkeyboard \
    qt6-qtmultimedia \
    qt6-qtimageformats

sudo systemctl set-default graphical.target
