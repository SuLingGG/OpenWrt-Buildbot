#!/bin/bash
#=================================================
# File name: revert-docker.sh
# Author: SuLingGG
# Blog: https://mlapp.cn
#=================================================

git clone --depth=1 https://github.com/immortalwrt/packages.git -b openwrt-18.06 package/packages

pushd package/packages/utils
rm -rf containerd docker dockerd docker-compose libnetwork runc tini
svn co https://github.com/coolsnowwolf/packages/trunk/utils/containerd
svn co https://github.com/coolsnowwolf/packages/trunk/utils/docker-ce
svn co https://github.com/coolsnowwolf/packages/trunk/utils/docker-compose
svn co https://github.com/coolsnowwolf/packages/trunk/utils/libnetwork
svn co https://github.com/coolsnowwolf/packages/trunk/utils/runc
svn co https://github.com/coolsnowwolf/packages/trunk/utils/tini
popd

pushd package/packages
export packages_feed="$(pwd)"
popd

sed -i '/src-git packages/d' feeds.conf.default
echo "src-link packages $packages_feed" >> feeds.conf.default