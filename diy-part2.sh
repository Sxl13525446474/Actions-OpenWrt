#!/bin/bash  diy-part2.sh
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
#sed -i 's/OpenWrt/P3TERX-Router/g' package/base-files/files/bin/config_generate

#!/bin/bash
# 强行删除默认的移动 MR3000D 配置文件，防止干扰
rm -rf target/linux/qualcommax/image/cmcc_mr3000d.boot
# 强行在全局默认配置中锁死小米 AX3000 v1
echo "CONFIG_TARGET_qualcommax=y" >> .config
echo "CONFIG_TARGET_qualcommax_ipq50xx=y" >> .config
echo "CONFIG_TARGET_qualcommax_ipq50xx_DEVICE_xiaomi_ax3000=y" >> .config
