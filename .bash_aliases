# Commun

alias ..='cd ..'
alias ...='cd ../..'
alias bat='batcat'
alias llt='exa -alF -T -s type -r'

# Bind UP/Down keys to search history functions
bind '"\e[A": history-search-backward'
bind '"\eOA": history-search-backward'
bind '"\e[B": history-search-forward'
bind '"\eOB": history-search-forward'

# Git aliases
alias gst='git status'
alias gci='git commit -m $1'
alias ga='git add'
alias go='git checkout'
alias gdf='git diff'
alias gcls='git reset --hard'
alias gbr="git branch --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(contents:subject) %(color:green)(%(committerdate:relative)) [%(authorname)]' --sort=-committerdate"
alias gls='git log --pretty=format:\"%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]\" --decorate'
alias gll='git log --pretty=format:\"%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]\" --decorate --numstat'
alias glnc='git log --pretty=format:\"%h\\ %s\\ [%cn]\"'
git_alias() { alias | grep 'git' | sed \"s/^\([^=]*\)=\(.*\)/\1 => \2/\"| sed \"s/['|\']//g\" | sort; }

# Container aliases
export CONTAINER_BUILDER="buildah"
alias brun="$CONTAINER_BUILDER run $*"
alias brm="$CONTAINER_BUILDER rm $*"  
alias brmi="$CONTAINER_BUILDER rmi $*"
alias bls="$CONTAINER_BUILDER ls"
alias bnuke="brm $(bls -q)"

export CONTAINER_ENGINE="podman"
alias crun='$CONTAINER_ENGINE run $*'

export CONTAINER_NODEJS="node16-raw:latest"
alias npm="podman run --rm -it -v $PWD:/usr/src/app/ $CONTAINER_NODEJS npm $*"
alias yarn="podman run --rm -it -v $PWD:/usr/src/app/ $CONTAINER_NODEJS yarn $*"
alias node="podman run --rm -it -v $PWD:/usr/src/app/ $CONTAINER_NODEJS node $*"
alias nodesh="podman run --rm -it -v $PWD:/usr/src/app/ $CONTAINER_NODEJS sh"

export CONTAINER_COSIGN="cosign:v1.5.1"
alias cosign="$CONTAINER_ENGINE run --rm -it -v $PWD:/usr/src/cosign/ $CONTAINER_COSIGN cosign $*"

git_alias() { alias | grep 'buildah' | sed \"s/^\([^=]*\)=\(.*\)/\1 => \2/\"| sed \"s/['|\']//g\" | sort; }

# PS1
export PS1="\[\033[36m\]\u\[\033[m\]@\e[31m\h:\[\033[32m\] \[\033[33;1m\]\w\[\033[m\]\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/') \n$"
