# AI Installer Discovery Imahe Packer Template for MAAS

## Introduction
The Packer template in this directory creates a CoreOS AMD64 image for use with MAAS.

## Prerequisites (to create the image)
* qemu-utils
* packer

## Getting the Base Image
```
$ ./0-getbaseimage.sh
```

## Building the [Centos] MaaS image
```
$ ./1-buildimage.sh
```
## Building the custom [Centos+AI-Discovery] MaaS image
Download your AI Discovery image under /iso folder with discovery_image.iso name. <br>
```
$ ./2-skunkworximagebuild.sh
```

## Uploading an image to MAAS
```
$ ./5-uploadimage.sh*
```

## Default SSH Username
The default username is ```core```
