#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

sudo mount -t ntfs-3g -o remove_hiberfile /dev/sda2 /mnt/windows
sudo grub-mkconfig -o /boot/grub/grub.cfg 
sudo umount /mnt/windows
