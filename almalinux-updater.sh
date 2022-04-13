#!/bin/bash
echo -e "\033[1;37m Almalinux updater starting... \033[0m "
echo -e "\033[0;31m !!! We run the script as root !!! \033[0m "
sleep 5

echo -e "\033[1;34m Checking disk space usage \033[0m "
echo -e "\033[0;31m Hit Ctrl+C, if you notice something wrong in 15 seconds \033[0m "
df -h
sleep 15

echo -e "\033[1;33m Clean dnf cache... \033[0m "
dnf clean all
sleep 5

echo -e "\033[1;33m Checking internet connection... \033[0m "
ping mirrors.almalinux.org -c 5
sleep 5

echo -e "\033[1;33m Starting update process...\033[0m "
dnf check-update
sleep 5
dnf update -y

echo -e "\033[1;37m End of update script \033[0m "
