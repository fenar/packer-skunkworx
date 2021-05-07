#!/usr/bin/env bash
#Author: fenar
sudo rm -R output-qemu
sudo rm -R packer_cache
sudo PACKER_LOG=1 packer build -var 'coreos_iso_path=iso/CentOS-8.3.2011-x86_64-boot.iso' config/coreos.json
