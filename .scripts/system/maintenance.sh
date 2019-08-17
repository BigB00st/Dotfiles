#!/bin/bash

yay # update packages
sudo paccache -rk1
sudo paccache -rk1 $HOME/.cache/yay # keep only previous version 
