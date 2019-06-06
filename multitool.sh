#!/bin/bash
# purges corrupted package list, refreshes and updates system
[ "$(whoami)" != "root" ] && exec sudo -- "$0" "$@"

clear
rm /var/lib/apt/lists/* -vf
apt-get update
apt-get upgrade
apt-get autoremove
apt-get clean
apt-get autoclean
clear

echo "System up to date."

