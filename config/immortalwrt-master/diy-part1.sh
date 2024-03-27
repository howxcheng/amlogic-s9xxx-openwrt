#!/bin/bash
#========================================================================================================================
# https://github.com/ophub/amlogic-s9xxx-openwrt
# Description: Automatically Build OpenWrt
# Function: Diy script (Before Update feeds, Modify the default IP, hostname, theme, add/remove software packages, etc.)
# Source code repository: https://github.com/immortalwrt/immortalwrt / Branch: master
#========================================================================================================================

# Add a feed source
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

# other
# rm -rf package/emortal/{autosamba,ipv6-helper}

touch /root/.vimrc
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/feeds/luci/luci-app-adguardhome
rm -rf feeds/packages/lang/golang
git clone https://github.com/sbwml/packages_lang_golang -b 22.x feeds/packages/lang/golang
# remove v2ray-geodata package from feeds (openwrt-22.03 & master)
rm -rf feeds/packages/net/v2ray-geodata
git clone https://github.com/sbwml/luci-app-mosdns -b v5 package/mosdns
git clone https://github.com/sbwml/v2ray-geodata package/v2ray-geodata
