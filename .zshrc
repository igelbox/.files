export VISUAL=vim
export HISTFILE=~/.zhistory

DEFAULT_USER=`whoami`

if [[ ${TERM} != "linux" ]]; then
  TERM=xterm-256color

  POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir)
  POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status vcs root_indicator background_jobs time)
  POWERLEVEL9K_MODE='awesome-fontconfig'
  POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='cyan'
  POWERLEVEL9K_DIR_HOME_BACKGROUND='cyan'
  POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='cyan'
  source /usr/share/zsh-theme-powerlevel10k/powerlevel9k.zsh-theme
fi

zstyle ":completion:*:commands" rehash 1

#source $HOME/.bin/antigen.zsh
source /usr/share/zsh/share/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle extract
antigen bundle zsh-users/zsh-syntax-highlighting
if [[ ${TERM} != "linux" ]]; then
  antigen bundle lukechilds/zsh-nvm
fi

antigen apply
