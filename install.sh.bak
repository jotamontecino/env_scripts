#!/bin/bash

# Setup for the .bashrc aliases
if [ ! -f ~/.bash_aliases ]; then
  touch ~/.bash_aliases
  echo "#!/bin/bash" > ~/.bash_aliases
  echo "" >> ~/.bash_aliases
fi

# Install OCI Stack

## Install latest from podman & buildah
sudo apt-get -y update
sudo apt-get -y install podman
## Setup bash_aliases
echo "" >> ~/.bash_aliases
# Clear sh
echo "# General aliases" >> ~/.bash_aliases
echo "## Clear screen" >> ~/.bash_aliases
echo "alias cls='printf \"\033c\"'" >> ~/.bash_aliases

echo "## Bind up and down to research through history" >> ~/.bash_aliases
echo "bind '\"\e[A\": history-search-backward'" >> ~/.bash_aliases
echo "bind '\"\e[B\": history-search-forward'" >> ~/.bash_aliases
echo "bind '\"\eOA\": history-search-backward'" >> ~/.bash_aliases
echo "bind '\"\eOB\": history-search-forward'" >> ~/.bash_aliases
echo "## Git aliases" >> ~/.bash_aliases
echo "alias gci='git commit -m $1'" >> ~/.bash_aliases
echo "alias ga='git add'" >> ~/.bash_aliases
echo "alias go='git checkout'" >> ~/.bash_aliases
echo "alias gdf='git diff'" >> ~/.bash_aliases
echo "alias gls='git log --pretty=format:\"%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]\" --decorate'" >> ~/.bash_aliases
echo "alias gll='git log --pretty=format:\"%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]\" --decorate --numstat'" >> ~/.bash_aliases
echo "alias glnc='git log --pretty=format:\"%h\\ %s\\ [%cn]\"'" >> ~/.bash_aliases
echo "git_alias() { alias | grep 'git' | sed \"s/^\([^=]*\)=\(.*\)/\1 => \2/\"| sed \"s/['|\']//g\" | sort; }" >> ~/.bash_aliases

echo "## Command line decoration" >> ~/.bash_aliases
echo "" >> ~/.bash_aliases
echo "export PS1=\"\[\033[36m\]\u\[\033[m\]@\e[31m\h:\[\033[32m\] \[\033[33;1m\]\w\[\033[m\]\$(__git_ps1) \n$ \"" >> ~/.bash_aliases
echo "" >> ~/.bash_aliases


echo "# SigStore dependencies aliases"  >> ~/.bash_aliases
echo "alias bls=\"buildah containers\"" >>~/.bash_aliases

echo "# Buildah aliases"  >> ~/.bash_aliases
echo "alias brun=\"buildah run $*\""    >>~/.bash_aliases
echo "alias brm=\"buildah rm $*\""      >>~/.bash_aliases
echo "alias brmi=\"buildah rmi $*\""    >>~/.bash_aliases
echo "alias bnuke=\"brm $(bls -q)\""     >>~/.bash_aliases
echo "git_alias() { alias | grep 'buildah' | sed \"s/^\([^=]*\)=\(.*\)/\1 => \2/\"| sed \"s/['|\']//g\" | sort; }" >> ~/.bash_aliases

echo "" >> ~/.bash_aliases
echo "alias npm=\"podman run --rm -it -v $PWD:/usr/src/app/ node16-raw:latest npm $*\"" >> ~/.bash_aliases
echo "alias npx=\"podman run --rm -it -v $PWD:/usr/src/app/ node16-raw:latest npx $*\"" >> ~/.bash_aliases

## Install latest from skopeo
sudo apt-get -y install skopeo

# Install General dependencies

## Containers Run-Images
### SigStore
echo "# SigStore dependencies aliases" >> ~/.bash_aliases
echo "alias cosign=\"podman run --rm -it -v $PWD:/usr/src/cosign/ localhost/cosign:v1.5.1 cosign $*\"" >> ~/.bash_aliases
