#!/bin/bash
if [[ $USER != 'root' ]]; then
  echo -e '\e[1mERROR:\e[0m This script must be run as root'; exit
else
  DIV='\e[2m============================================================================================\e[0m'
  (figlet Process Overview && echo -e "\e[4mproc-overview v0.1 by su-security-tools\e[0m" && echo && echo -e $DIV
  echo -e "\e[32m\e[1mACTIVE NETWORK PROC\e[0m \e[2m(sudo netstat -antpu)\e[0m"
  sudo netstat -antpu && echo && echo -e $DIV
  echo -e "\e[32m\e[1mFULL PROC TREE\e[0m \e[2m(sudo pstree -p)\e[0m"
  sudo pstree -p && echo && echo -e $DIV
  echo -e "\e[32m\e[1mSYSTEMD STATUS\e[0m \e[2m(sudo systemctl status)\e[0m"
  sudo systemctl status && echo && echo -e $DIV
  echo -e "\e[2mDone\e[0m") | most
fi
