export _JAVA_AWT_WM_NONREPARENTING=1
export ZSH="/home/yondonjamts/.oh-my-zsh"
export NODE_PATH=/usr/local/lib/node_modules

export PATH="$PATH:/home/yondonjamts/.local/share/gem/ruby/3.0.0/bin"
# export PATH="$PATH:/home/yondonjamts/.gem/ruby/2.7.0/bin"
export PATH="$PATH:/opt/apache-maven-3.6.3/bin"
export PATH="$PATH:/home/yondonjamts/.bspwm/panel"
export PATH="$PATH:/home/yondonjamts/.local/bin"
export PANEL_FIFO="/tmp/yondonjamts/panel-info"
export LANG=en_US.UTF-8

# ZSH_THEME="kelan"
# ZSH_THEME="kolo"
ZSH_THEME="ibra"
ENABLE_CORRECTION="true"
ZSH_COLORIZE_TOOL=pygmentize
plugins=(git cp colorize battery grc fzf)
source $ZSH/oh-my-zsh.sh

# uxterm
xrdb -l ~/.Xresources

# keyboard refresh rate
xset r rate 190 50

set bell-style none

# export greetingText=$(shuf -n 1 /home/yondonjamts/.yondonjamts/words.txt)
# toilet -f mono12 -F metal $greetingText -w 6000

TERM=xterm-256color

# nodejs
VERSION=v14.17.3
DISTRO=linux-x64
export PATH="$PATH:/usr/local/lib/nodejs/node-$VERSION-$DISTRO/bin:PATH"

# its all about history
unset HISTFILESIZE
export HISTSIZE=10000
export HISTFILESIZE=10000
export PROMPT_COMMAND='history -a'
export HISTCONTROL=ignoredups

source /home/yondonjamts/.yondonjamts/alias
# set -o vi

[ -f "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env" ] && source "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env"

export CI_SERVER_URL=https://gitlab.com
export AILAB_GROUP_ID=3707208
export AILAB_PROFILE=local


