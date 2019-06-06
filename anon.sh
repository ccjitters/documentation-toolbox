#!/bin/bash
# purges corrupted package list, refreshes and updates system
[ "$(whoami)" != "root" ] && exec gksudo -- "$0" "$@"

service network-manager stop
macchanger -a wlan0
service network-manager start

clear