#!/bin/bash
CONFIG_FILE="kas_config.yml"  
#PKG_IMG_DIR="/home/hamza/yocto/tech_prj/Kas/build/tmp-glibc-glibc/deploy/ipk"

echo "[INFO] Running kas build..."
kas build "$CONFIG_FILE"
echo "Starting Apache"
#cd "$PKG_IMG_DIR"
sudo docker start yocto-apache
echo "[INFO] Opening kas shell..."
kas shell "$CONFIG_FILE"
