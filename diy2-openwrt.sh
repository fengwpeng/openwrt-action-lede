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
sed -i 's/192.168.1.1/192.168.0.1/g' package/base-files/files/bin/config_generate

#把默认bootstrap主题改成openTomato
#sed -i 's/luci-theme-bootstrap/luci-theme-openTomato/g' ./feeds/luci/collections/luci/Makefile	
