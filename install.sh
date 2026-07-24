#!/bin/bash
set -e
echo "[*] Starting Moodle Automated Installation..."

# Update and install prerequisites
apt update && apt upgrade -y
apt install -y apache2 mariadb-server php8.3 php8.3-mysql php8.3-xml php8.3-curl php8.3-zip php8.3-gd php8.3-mbstring php8.3-intl php8.3-soap curl git unzip redis-server php8.3-redis

# Enable and start services
systemctl enable --now apache2
systemctl enable --now mariadb
systemctl enable --now redis-server

echo "[+] Core stack installed successfully."
