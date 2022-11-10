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
IZIN=$( curl https://Etil-arya.github.io/izin | grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "${NC}${GREEN}Permission Accepted...${NC}"
else
echo -e "${NC}${RED}Permission Denied!${NC}";
exit 0
fi 
clear

# VPS Information
#Status certificate
#modifyTime=$(stat $HOME/.acme.sh/${domain}_ecc/${domain}.key | sed -n '7,6p' | awk '{print $2" "$3" "$4" "$5}')
#modifyTime1=$(date +%s -d "${modifyTime}")
#currentTime=$(date +%s)
#stampDiff=$(expr ${currentTime} - ${modifyTime1})
#days=$(expr ${stampDiff} / 86400)
#remainingDays=$(expr 90 - ${days})
#tlsStatus=${remainingDays}
#if [[ ${remainingDays} -le 0 ]]; then
#	tlsStatus="expired"
#fi
# OS Uptime
uptime="$(uptime -p | cut -d " " -f 2-10)"
# Download
#Download/Upload today
dtoday="$(vnstat -i eth0 | grep "today" | awk '{print $2" "substr ($3, 1, 1)}')"
utoday="$(vnstat -i eth0 | grep "today" | awk '{print $5" "substr ($6, 1, 1)}')"
ttoday="$(vnstat -i eth0 | grep "today" | awk '{print $8" "substr ($9, 1, 1)}')"
#Download/Upload yesterday
dyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $2" "substr ($3, 1, 1)}')"
uyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $5" "substr ($6, 1, 1)}')"
tyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $8" "substr ($9, 1, 1)}')"
#Download/Upload current month
dmon="$(vnstat -i eth0 -m | grep "`date +"%b '%y"`" | awk '{print $3" "substr ($4, 1, 1)}')"
umon="$(vnstat -i eth0 -m | grep "`date +"%b '%y"`" | awk '{print $6" "substr ($7, 1, 1)}')"
tmon="$(vnstat -i eth0 -m | grep "`date +"%b '%y"`" | awk '{print $9" "substr ($10, 1, 1)}')"
# Getting CPU Information
cpu_usage1="$(ps aux | awk 'BEGIN {sum=0} {sum+=$3}; END {print sum}')"
cpu_usage="$((${cpu_usage1/\.*} / ${corediilik:-1}))"
cpu_usage+=" %"
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
WKT=$(curl -s ipinfo.io/timezone )
DAY=$(date +%A)
DATE=$(date +%m/%d/%Y)
IPVPS=$(curl -s ipinfo.io/ip )
cname=$( awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo )
cores=$( awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo )
freq=$( awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo )
tram=$( free -m | awk 'NR==2 {print $2}' )
uram=$( free -m | awk 'NR==2 {print $3}' )
fram=$( free -m | awk 'NR==2 {print $4}' )

declare -A nama_hari
nama_hari[Monday]="Senin"
nama_hari[Tuesday]="Selasa"
nama_hari[Wednesday]="Rabu"
nama_hari[Thursday]="Kamis"
nama_hari[Friday]="Jumat"
nama_hari[Saturday]="Sabtu"
nama_hari[Sunday]="Minggu"
hari_ini=`date +%A`


declare -A nama_bulan
nama_bulan[Jan]="Januari"
nama_bulan[Feb]="Februari"
nama_bulan[Mar]="Maret"
nama_bulan[Apr]="April"
nama_bulan[May]="Mei"
nama_bulan[Jun]="Juni"
nama_bulan[Jul]="Juli"
nama_bulan[Aug]="Agustus"
nama_bulan[Sep]="September"
nama_bulan[Oct]="Oktober"
nama_bulan[Nov]="November"
nama_bulan[Dec]="Desember"
bulan_ini=`date +%b`

hari=${nama_hari[$hari_ini]}
jam=$(TZ='Asia/Jakarta' date +%R)
tnggl=$(date +"%d")
bln=${nama_bulan[$bulan_ini]}
thn=$(date +"%Y")
clear 
Domen="$(cat /etc/xray/domain)"
echo ""
echo -e "${GREEN}══════════════════════════════════════════════════════════${NC}"
echo -e "                      • SERVER INFO •                 "
echo -e "${GREEN}══════════════════════════════════════════════════════════${NC}"
echo -e "${cyan}>${NC}\e[34m CPU Model              \e[0m: $cname"
echo -e "${cyan}>${NC}\e[34m CPU Frequency          \e[0m: $freq MHz"
echo -e "${cyan}>${NC}\e[34m Number Of Cores        \e[0m:  $cores"
echo -e "${cyan}>${NC}\e[34m CPU Usage              \e[0m:  $cpu_usage"
echo -e "${cyan}>${NC}\e[34m Operating System       \e[0m:  "`hostnamectl | grep "Operating System" | cut -d ' ' -f5-`	
echo -e "${cyan}>${NC}\e[34m Kernel                 \e[0m:  `uname -r`"
echo -e "${cyan}>${NC}\e[34m Total Amount Of RAM    \e[0m:  $tram MB"
echo -e "${cyan}>${NC}\e[34m Used RAM               \e[0m:  $uram MB"
echo -e "${cyan}>${NC}\e[34m Free RAM               \e[0m:  $fram MB"
echo -e "${cyan}>${NC}\e[34m System Uptime          \e[0m:  $uptime "
echo -e "${cyan}>${NC}\e[34m ISP Name               \e[0m:  $ISP"
echo -e "${cyan}>${NC}\e[34m Domain                 \e[0m:  $Domen"
echo -e "${cyan}>${NC}\e[34m IP Vps                 \e[0m:  $IPVPS"	
echo -e "${cyan}>${NC}\e[34m City                   \e[0m:  $CITY"
echo -e "${cyan}>${NC}\e[34m TimeZone               \e[0m:  $WKT"
echo -e "${cyan}>${NC}\e[34m Hari                   \e[0m:  $hari"
echo -e "${cyan}>${NC}\e[34m Tanggal                \e[0m:  $DATE"
echo -e "${cyan}>${NC}\e[34m Jam                   \e[0m :  $jam WIB ${NC}"
echo -e "${GREEN}══════════════════════════════════════════════════════════${NC}"
echo -e "\e[34m Traffic\e[0m        \e[33mHari ini       Kemarin      Bulan   "
echo -e "\e[34m Download\e[0m       $dtoday   $dyest   $dmon   \e[0m"
echo -e "\e[34m Upload\e[0m         $utoday   $uyest   $umon   \e[0m"
echo -e "\e[34m Total\e[0m  \033[0;36m        $ttoday   $tyest   $tmon  \e[0m "
echo -e "${GREEN}══════════════════════════════════════════════════════════${NC}"
 echo -e  "${GREEN}  ╠═════════════════════════════════════════════════╣" | lolcat
 echo -e  "${GREEN}  ║                ${cyan}   • INFO MENU •                 ${GREEN}║" | lolcat
 echo -e  "${GREEN}  ╠═════════════════════════════════════════════════╣" | lolcat
 echo -e  " ${GREEN} ║\e[0m01. Panel SSH & OpenVPN  $bl    " | lolcat
 echo -e  " ${GREEN} ║\e[0m02. Panel Vmess & Vless $bl  " | lolcat
 echo -e  " ${GREEN} ║\e[0m03. Panel Trojan  $bl    " | lolcat
 echo -e  " ${GREEN} ║\e[0m04. Add Subdomain For Vps $gl  " | lolcat
 echo -e  " ${GREEN} ║\e[0m05. Renew Certificate V2ray $bl   " | lolcat
 echo -e  " ${GREEN} ║\e[0m06. Change Port All Acount  $bl  " | lolcat
 echo -e  " ${GREEN} ║\e[0m07. Cek Status Layanan  $gl   " | lolcat
 echo -e  " ${GREEN} ║\e[0m08. Webmin Menu $gl  " | lolcat
 echo -e  " ${GREEN} ║\e[0m09. Cek Bandwith Harian  $gl  " | lolcat
 echo -e  " ${GREEN} ║\e[0m10. Reboot Vps $gl  " | lolcat
 echo -e  " ${GREEN} ║\e[0m11. Speedtest $mg  " | lolcat
 echo -e  " ${GREEN} ║\e[0m12. Info Script Port Install $mg   " | lolcat
 echo -e  " ${GREEN} ║\e[0m13. Info Script Auto Install $mg   " | lolcat
 echo -e  " ${GREEN} ╠═════════════════════════════════════════════════╣" | lolcat
 echo -e  " ${GREEN} ║${cyan} SCRIPT BY RICKZ                        ${GREEN}║" | lolcat
 echo -e  " ${GREEN} ╚═════════════════════════════════════════════════╝\e[0m" | lolcat
echo -e  ""
read -p " Select From Options [1-13 or x] : " menu
echo -e   ""
case $menu in
1)
ssh
;;
2)
v2raay
;;
3)
trojaan
;;
4)
addhost
;;
5)
certv2ray
;;
6)
changeport
;;
7)
running
;;
8)
wbmn
;;
9)
vnstat -d
;;
10)
reboot
;;
11)
speedtest
;;
12)
info
;;
13)
about
;;
0 | 00)
menu
;;
*)
exit
;;
esac
