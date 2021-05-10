#!/usr/bin/env bash
#Author: fenar
maas admin boot-resources create name='centos/ai-disco' title='CoreOS' architecture='amd64/generic' filetype='tgz' content@=iso/skunkworx-image.tar.gz
