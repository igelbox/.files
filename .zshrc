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
prompt_status() {
  local symbols
  symbols=()
  [[ $RETVAL -ne 0 ]] && symbols+="%{%F{red}%}✘"
  [[ $RETVAL -eq 0 ]] && symbols+=" "
  [[ $(jobs -l | wc -l) -gt 0 ]] && symbols+="%{%F{cyan}%}⚙"

  [[ -n "$symbols" ]] && prompt_segment cyan default "$symbols"
}

zstyle ":completion:*:commands" rehash 1

TERM=xterm-256color
