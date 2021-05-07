# CoreOS Packer Template for MAAS

## Introduction
The Packer template in this directory creates a CoreOS AMD64 image for use with MAAS.

## Prerequisites (to create the image)
* qemu-utils
* packer

## Getting the Base Image
```
$ ./0-getbaseimage.sh
```

## Building the custom MaaS image
```
$ ./1-buildimage.sh
```

## Uploading an image to MAAS
```
$ ./2-uploadimage.sh*
```

## Default SSH Username
The default username is ```core```
