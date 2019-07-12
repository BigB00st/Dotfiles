#!/bin/bash

sudo mount -t ntfs-3g -o remove_hiberfile /dev/sda2 /mnt/windows
sudo grub-mkconfig -o /boot/grub/grub.cfg 
sudo umount /mnt/windows
