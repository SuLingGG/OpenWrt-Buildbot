#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Mod zzz-default-settings
pushd package/emortal/default-settings/files
sed -i '/http/d' zzz-default-settings
sed -i '/openwrt_luci/d' zzz-default-settings
popd

# Delete extra directory
rm -rf package/lean

# Clone community packages to package/community
mkdir package/community
pushd package/community

# Add luci-app-dnsfilter
git clone --depth=1 https://github.com/garypang13/luci-app-dnsfilter

# Add luci-app-bypass
git clone --depth=1 https://github.com/garypang13/luci-app-bypass
git clone --depth=1 https://github.com/garypang13/smartdns-le

# Add luci-app-godproxy
git clone --depth=1 https://github.com/project-lede/luci-app-godproxy

# Add luci-app-oaf
git clone --depth=1 https://github.com/destan19/OpenAppFilter -b oaf-3.0.1
popd

# Use Lean's qBittorrent
pushd package/lean
rm -rf luci-app-qbittorrent qBittorrent-Enhanced-Edition qt5
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/rblibtorrent
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-qbittorrent
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/qBittorrent
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/qt5
popd

# Fix mt76 wireless driver
pushd package/kernel/mt76
sed -i '/mt7662u_rom_patch.bin/a\\techo mt76-usb disable_usb_sg=1 > $\(1\)\/etc\/modules.d\/mt76-usb' Makefile
popd

# Fix luci-app-aria2
pushd feeds/luci/applications
rm -rf luci-app-aria2
svn co https://github.com/coolsnowwolf/luci/trunk/applications/luci-app-aria2
popd

# Rename hostname to OpenWrt
pushd package/base-files/files/bin
sed -i 's/ImmortalWrt/OpenWrt/g' config_generate
popd

# Fix SDK
sed -i '/$(SDK_BUILD_DIR)\/$(STAGING_SUBDIR_HOST)\/usr\/bin/d;/LICENSE/d' target/sdk/Makefile

# Remove some default packages
sed -i 's/luci-app-ddns//g;s/luci-app-upnp//g;s/luci-app-adbyby-plus//g;s/luci-app-vsftpd//g;s/luci-app-ssr-plus//g;s/luci-app-unblockmusic//g;s/luci-app-vlmcsd//g;s/luci-app-wol//g;s/luci-app-nlbwmon//g;s/luci-app-accesscontrol//g' include/target.mk

# Change default shell to zsh
sed -i 's/\/bin\/ash/\/usr\/bin\/zsh/g' package/base-files/files/etc/passwd
