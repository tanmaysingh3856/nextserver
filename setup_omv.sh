#!/bin/bash

# Update and upgrade the system
sudo apt update && sudo apt upgrade -y

# Install necessary packages
sudo apt install -y sudo curl gnupg2

# Add the OpenMediaVault repository
echo "deb http://packages.openmediavault.org/public erasmus main" | sudo tee /etc/apt/sources.list.d/openmediavault.list

# Add the OpenMediaVault GPG key
curl -fsSL https://packages.openmediavault.org/public/archive.key | sudo apt-key add -

# Update package lists
sudo apt update

# Install OpenMediaVault
sudo apt install -y openmediavault

# Initialize the OpenMediaVault installation
sudo omv-confdbadm populate

# Restart the OpenMediaVault services
sudo systemctl restart nginx
sudo systemctl restart php7.3-fpm

# Display completion message
echo "OpenMediaVault has been installed and configured. You can access the web interface at http://<your_vps_ip> with the default credentials (admin/admin)."
