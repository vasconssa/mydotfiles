ZSH_THEME="powerlevel9k/powerlevel9k"
plugins=(
    zsh-autosuggestions
    git
    zsh-syntax-highlighting
    zsh-completions
)
export PATH=$PATH:$DOTFILES/scripts
export ZSH=$HOME/.oh-my-zsh
export EDITOR="st -e nvim"
source $ZSH/oh-my-zsh.sh
autoload -U compinit && compinit
export LANG="en_US.UTF-8"
