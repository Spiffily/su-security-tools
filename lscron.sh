#!/usr/bin/env bash
#sudo apt-get install -y most figlet
if [[ $USER != 'root' ]]; then
  echo -e '\e[1mERROR:\e[0m This script must be run as root'; exit
else
  DIV='\e[2m============================================================================================\e[0m'
  (figlet "lscron"
  echo -e "\e[4mlscron v0.3 by su-security-tools\e[0m" && echo && echo -e $DIV

  echo -e "\e[1mCrontab /etc/crontab:\e[0m" && echo && cat /etc/crontab && echo && echo -e $DIV

  figlet /etc/cron.d
  echo -e "\e[1mContents of /etc/cron.d/:\e[0m  "$(ls -a /etc/cron.d) && echo && echo -e $DIV
  for CRONTAB in $(sudo ls /etc/cron.d)
  do
    echo -e "\e[1mCrontab /etc/cron.d/"$CRONTAB":\e[0m" && echo && sudo cat /etc/cron.d/$CRONTAB && echo && echo -e $DIV
  done
  #echo -e "\e[1mCrontab /etc/cron.d/anacron:\e[0m" && echo && cat /etc/cron.d/anacron && echo && echo -e $DIV

  figlet /var/spool/cron
  echo -e "\e[1mContents of /var/spool/cron/crontabs:\e[0m  "$(ls -a /var/spool/cron/crontabs) && echo && echo -e $DIV
  for CRONTAB in $(sudo ls /var/spool/cron/crontabs)
  do
    echo -e "\e[1mCrontab /var/spool/cron/crontabs/"$CRONTAB":\e[0m" && echo && sudo cat /var/spool/cron/crontabs/$CRONTAB && echo && echo -e $DIV
  done
  #echo -e "\e[1mCrontab of root 'crontab -e':\e[0m" && echo && sudo cat /var/spool/cron/crontabs/$USER && echo && echo -e $DIV
  echo -e "\e[4mDone\e[0m") | most
fi
