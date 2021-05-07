#!/usr/bin/env bash
#Author: fenar
tar xvf -C iso/coreos.tar.gz skunkworx
current-dir=pwd
cd skunkworx
sudo mkdir boot/iso
sudo cp iso/discovery_image.iso boot/iso/
sudo cp config/40_custom etc/grub.d/
cd $current-dir
sudo tar -czvf skunkworx-image.tar.gz skunkworx
