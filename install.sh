#!/bin/bash
VERSION=0.0.1

## Download github
echo "Downloading taskfiles"
wget "https://github.com/jotamontecino/env_scripts/archive/refs/tags/v$VERSION.tar.gz" -O /tmp/taskfile.tar.gz
tar -zxf /tmp/taskfile.tar.gz -C /tmp/
rm /tmp/taskfile.tar.gz
mkdir $HOME/.taskfiles
echo "Copy to Home folder"
cp -a /tmp/env_scripts-$VERSION/. $HOME/.taskfiles
rm -rf /tmp/env_scripts-$VERSION
mv $HOME/.taskfiles/Taskfile.yml $HOME/Taskfile.yml

## Install taskfile


## Run task:install