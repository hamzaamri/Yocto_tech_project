#!/bin/bash
CONFIG_FILE="kas_config.yml"  

echo "[INFO] Running kas build..."
kas build "$CONFIG_FILE"
echo "Starting Apache"
sudo docker start yocto-apache
echo "[INFO] Opening kas shell..."
kas shell "$CONFIG_FILE"
