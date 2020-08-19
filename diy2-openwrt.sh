#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy2-openwrt.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# 定制默认IP
#sed -i 's/192.168.1.1/10.0.0.1/g' package/base-files/files/bin/config_generate

# 添加第三方软件包
#git clone https://github.com/jerrykuku/node-request.git  package/node-request #git node-request 依赖
#git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/luci-app-jd-dailybonus
git clone https://github.com/KFERMercer/luci-app-serverchan package/luci-app-serverchan
#git clone https://github.com/kang-mk/luci-app-smartinfo package/luci-app-smartinfo
git clone https://github.com/Leo-Jo-My/luci-theme-opentomcat.git package/luci-theme-opentomcat
git clone https://github.com/Leo-Jo-My/luci-theme-leo.git package/luci-theme-leo
#git clone https://github.com/Aslin-Ameng/luci-theme-Night.git package/luci-theme-Night
#git clone https://github.com/Aslin-Ameng/luci-theme-Light.git package/luci-theme-Light
#git clone https://github.com/Flowers-in-thorns/luci-app-vssr-coexist.git package/luci-app-vssr-coexist
#把默认bootstrap主题改成openTomato
sed -i 's/luci-theme-bootstrap/luci-theme-opentomcat/g' ./feeds/luci/collections/luci/Makefile	
