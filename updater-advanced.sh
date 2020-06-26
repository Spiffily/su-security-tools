#!/bin/bash
sudo apt-get install -y figlet
figlet "Advanced Upgrade Tools"
echo -e "Welcome to the advanced software updater by <>."

echo -e "KERNEL: "$(uname -r)
echo
echo -e "UPDATE SETTINGS"
echo -e "Check or uncheck the boxes. (Check the main, universe, restricted,"
echo -e "multiverse and Canonical Partners boxes and make sure to select LTS"
echo -e "or Latest in the Notify dropdown before doing a release upgrade.)"
sudo software-properties-gtk
sudo apt-get update --fix-missing
sudo apt-get upgrade -y
sudo apt-get autoremove -y
sudo apt-get update --fix-missing

echo -e "PING STATS"
ping -c 4 8.8.8.8

echo -e "Trying RELEASE UPGRADE"
sudo do-release-upgrade

figlet Done
