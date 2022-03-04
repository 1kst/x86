sed -i 's/192.168.1.1/192.168.6.1/g' package/base-files/files/bin/config_generate
rm -rf package/lean/luci-theme-bootstrap
git clone https://github.com/jerrykuku/luci-app-argon-config.git package/lean/luci-app-argon-config
sed -i '/set luci.main.mediaurlbase=\/luci-static\/bootstrap/d' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap
sed -i 's/luci-theme-bootstrap/luci-theme-argon/' feeds/luci/collections/luci/Makefile
