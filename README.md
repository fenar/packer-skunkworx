# CoreOS Packer Template for MAAS

## Introduction
The Packer template in this directory creates a CoreOS AMD64 image for use with MAAS.

## Prerequisites (to create the image)
* qemu-utils
* [Packer](https://www.packer.io/intro/getting-started/install.html)
* The [CoreOS ISO](https://mirror.openshift.com/pub/openshift-v4/dependencies/rhcos/latest/latest/)

## Customizing the Image
The deployment image may be customized by modifying http/coreos.ks 

## Building the image using a proxy
The Packer template pulls all packages from the DVD except for Canonical's
cloud-init repository. To use a proxy during the installation add the
--proxy=$HTTP_PROXY flag to every line starting with url or repo in
http/coreos.ks. Alternatively you may set the --mirrorlist values to a
local mirror.

## Building an image
Your current working directory must be in packer-maas/coreos, where this file
is located. Once in packer-maas/rhel8 you can generate an image with:

```
$ sudo PACKER_LOG=1 packer build -var 'coreos_iso_path=/PATH/TO/coreos.iso' coreos.json
```

Note: coreos.json is configured to run Packer in headless mode. Only Packer
output will be seen. If you wish to see the installation output connect to the
VNC port given in the Packer output or change the value of headless to false in
coreos.json.

Installation is non-interactive.

## Uploading an image to MAAS
```
$ maas $PROFILE boot-resources create
name='rhel/coreos-custom' title='CoreOS' architecture='amd64/generic' filetype='tgz' content@=coreos.tar.gz
```

## Default Username
The default username is ```core```
