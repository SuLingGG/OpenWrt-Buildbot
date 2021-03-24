#!/bin/bash
#=================================================
# File name: revert-docker.sh
# Author: SuLingGG
# Blog: https://mlapp.cn
#=================================================

# Clone packages feeds
mkdir customfeeds
git clone --depth=1 https://github.com/immortalwrt/packages.git -b openwrt-18.06 customfeeds/packages

# Change docker to docker-ce
pushd customfeeds/packages/utils
rm -rf containerd docker dockerd docker-compose libnetwork runc tini
svn co https://github.com/coolsnowwolf/packages/trunk/utils/containerd
svn co https://github.com/coolsnowwolf/packages/trunk/utils/docker-ce
svn co https://github.com/coolsnowwolf/packages/trunk/utils/docker-compose
svn co https://github.com/coolsnowwolf/packages/trunk/utils/libnetwork
svn co https://github.com/coolsnowwolf/packages/trunk/utils/runc
svn co https://github.com/coolsnowwolf/packages/trunk/utils/tini
popd

# Set local feeds for packages feeds
pushd customfeeds/packages
export packages_feed="$(pwd)"
popd
sed -i '/src-git packages/d' feeds.conf.default
echo "src-link packages $packages_feed" >> feeds.conf.default

# Update feeds
./scripts/feeds update -a

# Replace dockerd to docker-ce for luci-app-docker & luci-app-dockerman
pushd feeds/luci/applications/luci-app-dockerman
sed -i 's/ +dockerd/-ce/g' Makefile
popd
pushd package/lean/luci-app-docker
sed -i 's/ +dockerd/-ce/g' Makefile
popd
