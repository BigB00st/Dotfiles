#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

sudo pacman -Syu # update packages
paccache -rk0 # remove cached packages
sudo pacman -Rns $(pacman -Qtdq) 2>/dev/null # remove orphaned packages 
