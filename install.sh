#!/bin/bash
VERSION=0.0.2

## Download github
echo "Downloading taskfiles"
wget "https://github.com/jotamontecino/env_scripts/archive/refs/tags/v$VERSION.tar.gz" -O /tmp/taskfile.tar.gz
tar -zxf /tmp/taskfile.tar.gz -C /tmp/
rm /tmp/taskfile.tar.gz
mkdir $HOME/.taskfile
echo "Copy to Home folder"
cp -a /tmp/env_scripts-$VERSION/.taskfile/. $HOME/.taskfile
mv /tmp/env_scripts-$VERSION/Taskfile.yml $HOME/Taskfile.yml

rm -rf /tmp/env_scripts-$VERSION

## Install taskfile


## Run task:install