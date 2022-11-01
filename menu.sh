#!/bin/bash
MYIP=$(curl -sS ipv4.icanhazip.com)
cd /usr/bin
clear
clear
# Color Validation
DF='\e[39m'
Bold='\e[1m'
Blink='\e[5m'
yell='\e[33m'
red='\e[31m'
green='\e[32m'
blue='\e[34m'
PURPLE='\e[35m'
cyan='\e[36m'
Lred='\e[91m'
Lgreen='\e[92m'
Lyellow='\e[93m'
NC='\e[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
LIGHT='\033[0;37m'

MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"

clear 
Domen="$(cat /etc/xray/domain)"

 echo -e  "${GREEN}  ╠═════════════════════════════════════════════════╣"
 echo -e  "${GREEN}  ║                \e[0m    MENU INFO                    ${GREEN}║"
 echo -e  "${GREEN}  ╠═════════════════════════════════════════════════╣"
 echo -e  " ${GREEN} ║\e[0m01. Creat SSH & OpenVPN $bl    "
 echo -e  " ${GREEN} ║\e[0m02. Creat L2tp & Pptp $gl   "
 echo -e  " ${GREEN} ║\e[0m03. Creat Vmess & Vless $bl  "
 echo -e  " ${GREEN} ║\e[0m04. Creat Trojan $bl    "
 echo -e  " ${GREEN} ║\e[0m05. Add Subdomain For Vps $gl  "
 echo -e  " ${GREEN} ║\e[0m06. Renew Certificate V2ray $bl   "
 echo -e  " ${GREEN} ║\e[0m07. Change Port All Acount  $bl  "
 echo -e  " ${GREEN} ║\e[0m08. Cek Status Running $gl   "
 echo -e  " ${GREEN} ║\e[0m09. Webmin Menu $gl  "
 echo -e  " ${GREEN} ║\e[0m10. Cek Bandwith Harian  $gl  "
 echo -e  " ${GREEN} ║\e[0m11. Reboot Vps $gl  "
 echo -e  " ${GREEN} ║\e[0m12. Speedtest $mg  "
 echo -e  " ${GREEN} ║\e[0m13. Info Port Install $mg   "
 echo -e  " ${GREEN} ║\e[0m14. Info Auto Install $mg   "
 echo -e  " ${GREEN} ║\e[0m15. Change Banner $mg "
 echo -e  " ${GREEN} ║\e[0m16. Restart Banner $mg "
 echo -e  " ${GREEN} ╠═════════════════════════════════════════════════╣"
 echo -e  " ${GREEN} ║\e[0m  SCRIPT BY ARYA BLITAR II                       ${GREEN}║"
 echo -e  " ${GREEN} ╚═════════════════════════════════════════════════╝\e[0m"
echo -e  ""
read -p " Select From Options [1-16 or x] : " menu
echo -e   ""
case $menu in
1)
ssh
;;
2)
l2tp
;;
3)
v2raay
;;
4)
trojaan
;;
5)
addhost
;;
6)
certv2ray
;;
7)
changeport
;;
8)
running
;;
9)
wbmn
;;
10)
vnstat -d
;;
11)
reboot
;;
12)
speedtest
;;
13)
info
;;
14)
about
;;
15)
nano /etc/issue.net
;;
16)
/etc/init.d/dropbear restart
;;
0 | 00)
menu
;;
*)
exit
;;
esac
