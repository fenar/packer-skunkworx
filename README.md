# AI Installer Discovery Image Builder for MAAS

## Introduction
The Packer template in this directory creates a CoreOS based AMD64 image for use with MAAS.

## Prerequisites (to create the image)
* qemu-utils
* packer

## (0) Getting the Base Image
```
$ ./0-getbaseimage.sh
```

## (1) Building the [Centos] MaaS image
```
$ ./1-buildimage.sh
```
## (2) Building the custom [Centos+AI-Discovery] MaaS image
Download your AI Discovery image under /iso folder with discovery_image.iso name. <br>
```
$ ./2-skunkworximagebuild.sh
```

## (3) Uploading an image to MAAS
```
$ ./3-uploadimage.sh*
```

## Default SSH Username
The default username is ```core```
