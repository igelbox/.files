ZSH=/usr/share/oh-my-zsh/
ZSH_THEME="agnoster"
DISABLE_AUTO_UPDATE="true"

plugins=(git)

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh

DEFAULT_USER=`whoami`

prompt_dir() {
  prompt_segment cyan black "%-40<...<%2~%<<"
}

zstyle ":completion:*:commands" rehash 1
