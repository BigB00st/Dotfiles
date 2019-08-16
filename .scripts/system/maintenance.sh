#!/bin/bash

yay # update packages
sudo paccache -rk1 /var/cache/pacman/pkg
sudo paccache -rk1 $HOME/.cache/yay # keep only previous version 
