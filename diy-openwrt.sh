#!/bin/bash
# cd openwrt
# rm -rf package/lean/luci-theme-argon  #删除源码自带的argon主题，因为最下面一个链接是增加了其他作者制作的argon主题
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# 说明：
# 除了第一行的#!/bin/bash不要动，其他的设置，前面带#表示不起作用，不带的表示起作用了（根据你自己需要打开或者关闭）
#

# 修改openwrt登陆地址,把下面的192.168.0.1修改成你想要的就可以了，其他的不要动
sed -i 's/192.168.1.1/192.168.0.1/g' package/base-files/files/bin/config_generate
#设置root密码为password,lienol源码中密码为空
#sed -i '/root::0:0:99999:7:::/s/^#//'  package/default-settings/files/zzz-default-settings
#sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/default-settings/files/zzz-default-settings  #设置密码为空（安装固件时无需密码登陆，然后自己修改想要的密码）
#把默认bootstrap主题改成OpenTomato
#sed -i 's/luci-theme-bootstrap/luci-theme-OpenTomato/g' ./feeds/luci/collections/luci/Makefile	

#修改版本内核（下面两行代码前面有#为源码默认最新5.4内核,没#为4.19内核,默认修改X86的，其他机型L大源码那里target/linux查看，对应修改下面的路径就好）
#sed -i 's/KERNEL_PATCHVER:=5.4/KERNEL_PATCHVER:=4.19/g' ./target/linux/x86/Makefile  #修改内核版本
#sed -i 's/KERNEL_TESTING_PATCHVER:=5.4/KERNEL_TESTING_PATCHVER:=4.19/g' ./target/linux/x86/Makefile  #修改内核版本

# Add a feed source
sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i '$a src-git kenzo https://github.com/V2RaySSR/openwrt-packages' feeds.conf.default
sed -i '$a src-git small https://github.com/V2RaySSR/small' feeds.conf.default

#取消掉feeds.conf.default文件里面的helloworld的#注释
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default  #使用源码自带ShadowSocksR Plus+出国软件


#添加自定义插件链接（自己想要什么就github里面搜索然后添加）
#git clone -b 18.06 https://github.com/garypang13/luci-theme-edge package/luci-theme-edge  #主题-edge-动态登陆界面
#git clone -b master https://github.com/vernesong/OpenClash.git package/luci-app-openclash  #openclash出国软件
#git clone https://github.com/frainzy1477/luci-app-clash package/luci-app-clash  #clash出国软件
#git clone https://github.com/tty228/luci-app-serverchan package/luci-app-serverchan  #微信推送
#git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns  #smartdns DNS加速


#passwall出国软件
#svn co https://github.com/xiaorouji/openwrt-package/trunk/lienol/luci-app-passwall package/lean/luci-app-passwall
#svn co https://github.com/xiaorouji/openwrt-package/trunk/package/brook package/lean/brook
#svn co https://github.com/xiaorouji/openwrt-package/trunk/package/chinadns-ng package/lean/chinadns-ng
#svn co https://github.com/xiaorouji/openwrt-package/trunk/package/tcping package/lean/tcping
#svn co https://github.com/xiaorouji/openwrt-package/trunk/package/trojan-go package/lean/trojan-go
#svn co https://github.com/xiaorouji/openwrt-package/trunk/package/trojan-plus package/lean/trojan-plus
#svn co https://github.com/xiaorouji/openwrt-package/trunk/package/syncthing package/lean/syncthing


#git clone https://github.com/jerrykuku/node-request.git package/lean/node-request  #京东签到依赖
#git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/lean/luci-app-jd-dailybonus  #luci-app-jd-dailybonus[京东签到]
