#!/bin/bash
VERSION=v0.0.1

## Download github
echo "Downloading taskfiles"
wget https://github.com/jotamontecino/env_scripts/archive/refs/tags/$(VERSION).tar.gz -O /tmp/taskfile.tar.gz
tar -zxvf /tmp/taskfile.tar.gz -C /tmp/

## Install taskfile


## Run task:install