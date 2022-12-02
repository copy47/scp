#!/bin/bash
# ==========================================
# Color
RED='\033[0;31m'
NC='\033[0m'
#GREEN='\033[0;32m'
#ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
#CYAN='\033[0;36m'
LIGHT='\033[0;37m'
off='\x1b[m'
# ==========================================
# Getting
function swap() {
dd if=/dev/zero of=/swapfile1 bs=1024 count=524288
dd if=/dev/zero of=/swapfile2 bs=1024 count=524288
mkswap /swapfile1 > /dev/null 2>&1
mkswap /swapfile2 > /dev/null 2>&1
chown root:root /swapfile1 > /dev/null 2>&1
chown root:root /swapfile2 > /dev/null 2>&1
chmod 0600 /swapfile1 > /dev/null 2>&1
chmod 0600 /swapfile2 > /dev/null 2>&1
swapon /swapfile1 > /dev/null 2>&1
swapon /swapfile2 > /dev/null 2>&1
sed -i '$ i\swapon /swapfile1' /etc/rc.local > /dev/null 2>&1
sed -i '$ i\swapon /swapfile2' /etc/rc.local > /dev/null 2>&1
sed -i '$ i\/swapfile1      swap swap   defaults    0 0' /etc/fstab > /dev/null 2>&1
sed -i '$ i\/swapfile2      swap swap   defaults    0 0' /etc/fstab > /dev/null 2>&1
systemctl restart rc-local > /dev/null 2>&1
}
swap