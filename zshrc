# path fo oh-my-zsh installation
export ZSH="$HOME/.oh-my-zsh"

# szsh themes
ZSH_THEME="robbyrussell"

# plugins
plugins=(
  git
  fzf
  tmux
  zsh-syntax-highlighting
  zsh-autosuggestions
)

# load oh-my-zsh setting
source $ZSH/oh-my-zsh.sh

# neovim config
alias vim="nvim"
alias vi="nvim"
alias vimdiff="nvim -d"

# enable vim in zsh
bindkey -v
bindkey '^R' history-incremental-search-backward # enable reverse-i search 

# remove default title from terminal window bar
DISABLE_AUTO_TITLE="true"

# iterm2 <-> tmux support 
export TERM=xterm-256color

# conda setup
export PATH="/opt/homebrew/Caskroom/miniconda/base/bin:$PATH"
