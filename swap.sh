#!/bin/bash

# =====================================
# Swap Space Creation Script
# Student Name:BrundhaS
# Roll Number:1U24IT135
# =====================================

# Create a 1 GB swap file
sudo fallocate -l 1G /swapfile

# Set correct permissions
sudo chmod 600 /swapfile

# Format the file as swap
sudo mkswap /swapfile

# Enable the swap file
sudo swapon /swapfile

# Make swap permanent after reboot
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab

# Verify swap is enabled
sudo swapon --show

exit 0
