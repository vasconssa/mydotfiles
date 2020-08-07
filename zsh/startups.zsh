ZSH_THEME="powerlevel9k/powerlevel9k"
#ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_MODE='nerdfont-complete'
plugins=(
    zsh-autosuggestions
    git
    zsh-syntax-highlighting
    zsh-completions
)
export PATH=$PATH:$HOME/.dotfiles/scripts
export ZSH=$HOME/.oh-my-zsh
export EDITOR="st -e nvim"
source $ZSH/oh-my-zsh.sh
autoload -U compinit && compinit
export LANG="en_US.UTF-8"
source $HOME/games/emsdk/emsdk_env.sh

#source $ZSH/oh-my-zsh.sh
#fpath=(/usr/local/share/zsh-completions $fpath)
#rm -f "$HOME/.zcompdump"; compinit
#
#
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

