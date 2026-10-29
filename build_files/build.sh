#!/bin/bash

set -ouex pipefail

# Copy the contents of system_files/ of the git repo to /
systemctl enable podman.socket
