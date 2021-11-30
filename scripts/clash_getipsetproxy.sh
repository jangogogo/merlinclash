#!/bin/sh

export KSROOT=/koolshare
source $KSROOT/scripts/base.sh
eval $(dbus export merlinclash_)
alias echo_date='echo 【$(date +%Y年%m月%d日\ %X)】:'
#
if [ -f "/koolshare/merlinclash/yaml_basic/ipsetproxy.yaml" ]; then
    ln -sf /koolshare/merlinclash/yaml_basic/ipsetproxy.yaml /tmp/upload/clash_ipsetproxy.txt
else
    rm -rf /tmp/upload/clash_ipsetproxy.txt
fi
if [ -f "/koolshare/merlinclash/yaml_basic/ipsetproxyarround.yaml" ]; then
    ln -sf /koolshare/merlinclash/yaml_basic/ipsetproxyarround.yaml /tmp/upload/clash_ipsetproxyarround.txt
else   
    rm -rf /tmp/upload/clash_ipsetproxyarround.txt
fi

http_response $1

