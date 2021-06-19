#!/bin/bash
# ====================================================================================================================================================================================
# config
# ====================================================================================================================================================================================


# Cloudflare API 令牌
CFAPI_KEY=f6ad09fa2597629da023c20768461ddc28609
# WAN IP
WAN_IP=$(curl -s ipv4.icanhazip.com)
# Record type, A(IPv4) AAAA(IPv6) CNAME
CFRECORD_TYPE=A

# 后台网址
PANEL_URL=https://www.jisutizi.xyz
# 后台LicenseBox授权客户名称
PANEL_CST=EVAN66
# 后台LicenseBox授权客户秘钥
PANEL_LIC=C58B-745B-1B5D-66C6
# 后台后端对接秘钥
PANEL_KEY=TzCloudhuahua123

# 根域名
DOMAIN_ZONE=wz5518.com
DOMAIN_MAIL=huahuazhang118@gmail.com

# 节点IP地址数组
DOMAIN_NAME[0]=
DOMAIN_CDNS[0]=
DOCKER_NAME[0]=
DOCKER_PORT[0]=
DOCKER_NODE[0]=


# ====================================================================================================================================================================================
# 执行安装
# ====================================================================================================================================================================================

#wget -q https://raw.githubusercontent.com/siemenstutorials/spvgo/master/pax.sh -O pax.sh
#wget -q https://raw.githubusercontent.com/siemenstutorials/spvgo/master/cftls.sh -O cftls.sh

. ./cftls.sh

identify_system
identify_operate

output_title

install_base
install_swap

install_nginx
install_dns
install_cert
install_conf
install_cron
install_docker

systemctl restart nginx

output_result

#rm -rf ./pax.sh
#rm -rf $0
