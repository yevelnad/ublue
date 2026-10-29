#!/bin/bash

set -ouex pipefail

# Copy the contents of system_files/ of the git repo to /
cp -avf "/ctx/system_files"/. /


sudo systemctl set-default graphical.target
systemctl enable podman.socket

sudo dracut --regenerate-all --force
