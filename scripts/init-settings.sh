#!/bin/bash
#=================================================
# File name: init-settings.sh
# Description: This script will be executed during the first boot
# Author: SuLingGG
# Blog: https://mlapp.cn
#=================================================

# Set default theme to luci-theme-argon
uci set luci.main.mediaurlbase='/luci-static/argon'

# Disable opkg signature check
sed -i 's/option check_signature/# option check_signature/g' /etc/opkg.conf

# Add build date to index page
export orig_version="$(cat "/etc/openwrt_release" | grep DISTRIB_DESCRIPTION | awk -F "'" '{print $2}')"
sed -i "s/${orig_version}/${orig_version} ($(date +"%Y-%m-%d"))/g" /etc/openwrt_release

# Add execute permission for ipv6-helper
chmod +x /bin/ipv6-helper

# Add support for USB_LAN78XX Pi Compute Module 4 carrier boards
cd /lib/firmware/brcm
if [ `ls -l|grep '4-compute-module.txt'|wc -l` -eq 0 ]; then
    cp brcmfmac43455-sdio.raspberrypi,4-model-b.txt brcmfmac43455-sdio.raspberrypi,4-compute-module.txt
fi

exit 0
