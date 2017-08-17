export VISUAL=vim
export HISTFILE=~/.zhistory

TERM=xterm-256color
DEFAULT_USER=`whoami`

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status vcs root_indicator background_jobs time)
POWERLEVEL9K_MODE='awesome-fontconfig'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='cyan'
POWERLEVEL9K_DIR_HOME_BACKGROUND='cyan'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='cyan'
source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme

zstyle ":completion:*:commands" rehash 1

source $HOME/.bin/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle extract
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle lukechilds/zsh-nvm

antigen apply
