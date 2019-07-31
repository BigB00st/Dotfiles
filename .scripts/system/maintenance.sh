#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

sudo pacman -Syu # update packages
paccache -rk1 # keep only previous version 
