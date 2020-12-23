#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
sed -i '$a src-git node https://github.com/nxhack/openwrt-node-packages.git;lede-17.01' feeds.conf.default
sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
git clone https://github.com/KyleRicardo/MentoHUST-OpenWrt-ipk.git package/mentohust
git clone https://github.com/BoringCat/luci-app-mentohust.git package/luci-app-mentohust
git clone https://github.com/brvphoenix/wrtbwmon.git package/wrtbwmon
git clone https://github.com/brvphoenix/luci-app-wrtbwmon.git package/luci-app-wrtbwmon 
git clone https://github.com/kenzok8/openwrt-packages.git package/openwrt-packages
git clone https://github.com/openwrt-dev/po2lmo.git