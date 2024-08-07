#!/bin/bash
VERSION=0.1.0

## Download github
echo "Downloading taskfiles"
wget "https://github.com/jotamontecino/env_scripts/archive/refs/tags/v$VERSION.tar.gz" -O /tmp/taskfile.tar.gz
tar -zxf /tmp/taskfile.tar.gz -C /tmp/
rm /tmp/taskfile.tar.gz
mkdir $HOME/.taskfile
echo "Copy to Home folder"
cp -a /tmp/env_scripts-$VERSION/.taskfile/. $HOME/.taskfile
mv /tmp/env_scripts-$VERSION/Taskfile.yml $HOME/Taskfile.yml
cp /tmp/env_scripts-$VERSION/.bash_aliases $HOME/.bash_aliases
mkdir -p $HOME/.config
cp /tmp/env_scripts-$VERSION/.config/* $HOME/.config
sudo cp -r  /tmp/env_scripts-$VERSION/usr/* /usr/

rm -rf /tmp/env_scripts-$VERSION

## Install taskfile


## Run task:install
