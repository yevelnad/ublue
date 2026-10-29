#!/bin/bash

set -ouex pipefail

# Copy the contents of system_files/ of the git repo to /
cp -avf "/ctx/system_files"/. /

dnf5 -y install \
    sddm qt6-qtsvg \
    qt6-qtvirtualkeyboard \
    qt6-qtmultimedia \
    qt6-qtimageformats

sudo dracut --force
