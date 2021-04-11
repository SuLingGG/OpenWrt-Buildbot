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
pushd package/lean/default-settings/files
sed -i '/http/d' zzz-default-settings
sed -i '/openwrt_luci/d' zzz-default-settings
popd

# Clone community packages to package/community
mkdir package/community
pushd package/community

# Add luci-app-dnsfilter
git clone --depth=1 https://github.com/garypang13/luci-app-dnsfilter

# Add luci-app-bypass
git clone --depth=1 https://github.com/garypang13/luci-app-bypass
sed -i 's/smartdns-le/smartdns/g' luci-app-bypass/Makefile

# Add luci-app-godproxy
git clone --depth=1 https://github.com/project-lede/luci-app-godproxy
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

# Remove outdate packages
rm -rf package/ntlf9t/ndpi-netfilter

# Rename hostname to OpenWrt
pushd package/base-files/files/bin
sed -i 's/ImmortalWrt/OpenWrt/g' config_generate
popd

# Fix SDK
sed -i '/$(SDK_BUILD_DIR)\/$(STAGING_SUBDIR_HOST)\/usr\/bin/d;/LICENSE/d' target/sdk/Makefile

# Change default shell to zsh
sed -i 's/\/bin\/ash/\/usr\/bin\/zsh/g' package/base-files/files/etc/passwd
