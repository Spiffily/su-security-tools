#!/bin/bash
sudo apt-get install -y figlet
figlet "Advanced Upgrade Tools"
echo -e "\e[2mWelcome to the advanced Ubuntu software updater by su-security-tools.\e[0m"
echo
echo -e "\e[32m\e[1mKERNEL: "$(uname -r)"\e[0m"
echo
echo -e "\e[32m\e[1mUPDATE SETTINGS\e[0m"
echo -e "\e[1mINSTRUCTIONS:\e[0m Check or uncheck the boxes. (Check the main, "
echo -e "universe, restricted, multiverse and Canonical Partners boxes and make"
echo -e "sure to select LTS or Latest in the Notify dropdown before doing a "
echo -e "release upgrade.)"
echo -e "\e[1mNOTE: It isn't necessary to reload sources on exit!\e[0m"
echo
sudo software-properties-gtk
echo
echo -e "\e[32m\e[1mUPDATING SOFTWARE\e[0m"
sudo apt-get update --fix-missing
sudo apt-get upgrade -y
sudo apt-get autoremove -y
sudo apt-get update --fix-missing
echo
echo -e "\e[32m\e[1mPING STATS\e[0m"
ping -c 4 8.8.8.8
echo
echo -e "\e[32mTrying \e[1mRELEASE UPGRADE\e[0m"
sudo do-release-upgrade
echo
figlet Done
echo
echo -e "\e[32m\e[1mREBOOT:\e[0m"
read -p "It is very much advisable to reboot after a system upgrade. Reboot now? <Y/n> " prompt
if [[ $prompt == "y" || $prompt == "Y" || $prompt == "yes" || $prompt == "Yes" ]]
then
  sudo 
else
  exit 0
fi
