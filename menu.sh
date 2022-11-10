#!/bin/bash
yl='\e[32;1m'
bl='\e[36;1m'
gl='\e[32;1m'
rd='\e[31;1m'
mg='\e[0;95m'
blu='\e[1;34m'
op='\e[35m'
or='\033[1;33m'
bd='\e[1m'
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
bl='\e[36;1m'
bd='\e[1m'
color1='\e[031;1m'
color2='\e[34;1m'
color3='\e[0m'
clear
Domen="$(cat /etc/xray/domain)"
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
IPVPS=$(curl -s ipinfo.io/ip )
DOMAIN=$(cat /etc/v2ray/domain)
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
WKT=$(curl -s ipinfo.io/timezone )
IPVPS=$(curl -s ipinfo.io/ip )
jam=$(date +"%T")
hari=$(date +"%A")
tnggl=$(date +"%d-%B-%Y")
	cname=$( awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo )
	cores=$( awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo )
	freq=$( awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo )
	tram=$( free -m | awk 'NR==2 {print $2}' )
	swap=$( free -m | awk 'NR==4 {print $2}' )
	up=$(uptime|awk '{ $1=$2=$(NF-6)=$(NF-5)=$(NF-4)=$(NF-3)=$(NF-2)=$(NF-1)=$NF=""; print }')
 echo -e  "  ╠═════════════════════════════════════════════════╣"| lolcat
 echo -e  "  ║                  • INFO VPS •                   ║" |lolcat
 echo -e  "  ╠═════════════════════════════════════════════════╣"| lolcat
 echo -e " $gl ║ \e[0m• ISP Name          :\e[0m$bd $ISP"
 echo -e " $gl ║ \e[0m• City              :\e[0m$bd $CITY"
 echo -e " $gl ║ \e[0m• CPU Model         :\e[0m$bd$cname"
 echo -e " $gl ║ \e[0m• Number Of Cores   :\e[0m$bd $cores"
 echo -e " $gl ║ \e[0m• CPU Frequency     :\e[0m$bd$freq MHz"
 echo -e " $gl ║ \e[0m• Total RAM         :\e[0m$bd $tram MB"
 echo -e " $gl ║ \e[0m• Waktu             :\e[0m$bd $jam"
 echo -e " $gl ║ \e[0m• Hari              :\e[0m$bd $hari"
 echo -e " $gl ║ \e[0m• Tanggal           :\e[0m$bd $tnggl"
 echo -e " $gl ║ \e[0m• IP VPS            :\e[0m$bd $IPVPS"
 echo -e " $gl ║ \e[0m• Wa me             :\e[0m$bd 62859102827335"
 echo -e " $gl ║ \e[0m• By                :\e[0m$bd RICKZ"
 echo -e  "  ╠═════════════════════════════════════════════════╣" | lolcat
 echo -e  "  ║                  • INFO MENU •                  ║" |lolcat
 echo -e  "  ╠═════════════════════════════════════════════════╣" | lolcat
 echo -e  " $rd ║\e[0m01. CREAT SSH & OpenVPN  $bl    "
 echo -e  " $rd ║\e[0m02. CREAT L2TP   $bl   "
 echo -e  " $rd ║\e[0m03. CREAT PPTP $gl   "
 echo -e  " $rd ║\e[0m04. CREAT SSTP  $gl    "
 echo -e  " $rd ║\e[0m05. CREAT WIREGUARD     $mg    "
 echo -e  " $rd ║\e[0m06. CREAT SHADOWSOCKS    $mg "
 echo -e  " $rd ║\e[0m07. CREAT SHADOWSOCKSR  $mg  "
 echo -e  " $rd ║\e[0m08. CREAT XRAY VMESS $mg   "
 echo -e  " $rd ║\e[0m09. CREAT XRAY VLESS   $bl   "
 echo -e  " $rd ║\e[0m10. CREAT TROJAN GFW  $bl   "
 echo -e  " $rd ║\e[0m11. CREAT TROJAN GO  $bl    "
 echo -e  " $rd ║\e[0m12. CREAT XRAY GRPC   $gl   "
 echo -e  " $rd ║\e[0m13. CREAT SHADOKSOWK  $gl  "
 echo -e  " $rd ║\e[0m14. CEK PORT ALL IP $gl "
 echo -e  " $rd ║\e[0m15. CEK RUNNING $gl "
 echo -e  " $rd ║\e[0m16. Add Or Change Subdomain Host For VPS $bl    "
 echo -e  " $rd ║\e[0m17. Change Port Of Some Service  $bl   "
 echo -e  " $rd ║\e[0m18. Auto Backup Data VPS$gl   "
 echo -e  " $rd ║\e[0m19. Backup Data VPS $gl  "
 echo -e  " $rd ║\e[0m20. Restore Data VPS $gl  "
 echo -e  " $rd ║\e[0m21. Webmin Menu $gl  "
 echo -e  " $rd ║\e[0m22. Limit Bandwith Speed Server  $mg  "
 echo -e  " $rd ║\e[0m23. Check Usage of VPS Ram $mg   "
 echo -e  " $rd ║\e[0m24. Reboot VPS $bl   "
 echo -e  " $rd ║\e[0m25. Speedtest VPS  $bl   "
 echo -e  " $rd ║\e[0m26. Displaying System Information $bl    "
 echo -e  " $rd ║\e[0m27. Displaying System Info Boud $gl   "
 echo -e  " $rd ║\e[0m28. Menu  $mg   "
 echo -e  " $rd ║\e[0m29. Exit  $gl "
 echo -e  "  \e[1;32m╠═════════════════════════════════════════════════╣" | lolcat
 echo -e  "  ║  Script By RICKZ                                ║" | lolcat
 echo -e  "  \e[1;32m╚═════════════════════════════════════════════════╝" | lolcat
echo -e  ""
read -p "  Select From Options [1-29 or x] :  " menu
echo -e   ""
echo -e   ""
echo -e   ""
case $menu in
1)
clear
sshovpnmenu
;;
2)
clear
l2tpmenu
;;
3)
clear
pptpmenu
;;
4)
clear
sstpmenu
;;
5)
clear
wgmenu
;;
6)
clear
ssmenu
;;
7)
clear
ssrmenu
;;
8)
clear
vmessmenu
;;
9)
clear
vlessmenu
;;
10)
clear
trmenu
;;
11)
clear
trgomenu
;;
12)
clear
grpcmenu
;;
13)
clear
addss-p
;;
14)
clear
ipsaya
;;
15)
clear
running
;;
16)
clear
addhost
;;
17)
clear
changeport
;;
20)
clear
restore
;;
21)
clear
wbmn
;;
22)
clear
limitspeed
;;
23)
clear
ram
;;
24)
clear
reboot
;;
25)
clear
speedtest
;;
26)
clear
info
;;
27)
clear
about
;;
28)
clear
menu
;;
29)
clear
exit
;;
50)
clear
sl-fix
;;
51)
clear
setmenu
;;
52)
clear
copyrepo
;;
*)
clear
menu
;;
esac
