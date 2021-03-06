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
#sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
#sed -i '$a src-git node https://github.com/nxhack/openwrt-node-packages.git;lede-17.01' feeds.conf.default

# Clone package
#git clone https://github.com/brvphoenix/wrtbwmon.git package/wrtbwmon
#git clone https://github.com/brvphoenix/luci-app-wrtbwmon.git package/luci-app-wrtbwmon 
#git clone -b release-1.6.3 https://github.com/brvphoenix/luci-app-wrtbwmon.git package/luci-app-wrtbwmon
git clone https://github.com/kenzok8/openwrt-packages.git package/openwrt-packages
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
#git clone https://github.com/project-openwrt/luci-app-unblockneteasemusic.git package/luci-app-unblockneteasemusic
git clone https://github.com/BoringCat/luci-app-mentohust.git package/luci-app-mentohust
git clone https://github.com/KyleRicardo/MentoHUST-OpenWrt-ipk.git package/mentohust
git clone https://github.com/openwrt-dev/po2lmo.git
# git clone https://github.com/Zxilly/UA2F package/UA2F

# Add kernel config
# cat >> target/linux/ramips/mt7621/config-5.4 <<EOF
# CONFIG_NETFILTER=y
# CONFIG_NETFILTER_NETLINK=y
# CONFIG_NETFILTER_NETLINK_GLUE_CT=y
# CONFIG_NETFILTER_NETLINK_LOG=y
# CONFIG_NF_CONNTRACK=y
# CONFIG_NF_CT_NETLINK=y
# CONFIG_NF_DEFRAG_IPV4=y
# EOF
