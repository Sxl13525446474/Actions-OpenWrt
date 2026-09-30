#!/bin/bash
# 清理可能残留的第三方源，确保环境纯净
sed -i '/helloworld/d' feeds.conf.default
sed -i '/passwall/d' feeds.conf.default

# 精准添加包含 HomeProxy 及其依赖的最新独立扩展包源
echo 'src-git opentopd https://github.com' >>feeds.conf.default
