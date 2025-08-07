#!/bin/bash

# Luci 中文界面
sed -i '$a\CONFIG_PACKAGE_luci-i18n-base-zh-cn=y' .config

# L2TP 拨号支持
sed -i '$a\CONFIG_PACKAGE_luci-proto-l2tp=y' .config
sed -i '$a\CONFIG_PACKAGE_ppp-mod-pppol2tp=y' .config

# PPPoE 拨号支持
sed -i '$a\CONFIG_PACKAGE_luci-proto-ppp=y' .config
sed -i '$a\CONFIG_PACKAGE_ppp=y' .config

# AdGuard Home 广告过滤
sed -i '$a\CONFIG_PACKAGE_luci-app-adguardhome=y' .config

# Clash 科学上网（OpenClash）
sed -i '$a\CONFIG_PACKAGE_luci-app-openclash=y' .config

# SmartDNS DNS 加速
sed -i '$a\CONFIG_PACKAGE_luci-app-smartdns=y' .config
sed -i '$a\CONFIG_PACKAGE_smartdns=y' .config

# IPv6 支持
sed -i '$a\CONFIG_PACKAGE_ipv6helper=y' .config
sed -i '$a\CONFIG_PACKAGE_luci-proto-ipv6=y' .config

# Material 主题美化
sed -i '$a\CONFIG_PACKAGE_luci-theme-material=y' .config
