#!/bin/bash

yay # update packages
sudo paccache -rk1 #remove pacman cache
sudo paccache -rk1 $(find $(yay -Pg | jq -r .buildDir) -maxdepth 1 -type d | awk '{ print "-c " $1 }' | tail -n +2) #remove yay cache
