# Install neovim
yay --noconfirm -S neovim
yay --noconfirm -S vim
yay --noconfirm -S python-pynvim
#install minpac
VIM_DIRECTORY="$HOME/.vim/pack/minpack/opt/minpac"

#if [ ! -d "$VIM_DIRECTORY" ]; then
	#git clone https://github.com/k-takata/minpac.git $VIM_DIRECTORY 
#fi

if [ ! -f "$HOME/.config/nvim/init.vim" ]; then
    ln -s $HOME/.dotfiles/vim/init.vim.symlink $HOME/.config/nvim/init.vim
fi 

if [ ! -f "$HOME/.vimrc" ]; then
    mkdir $HOME/.config/nvim
    ln -s $HOME/.dotfiles/vim/vimrc.symlink $HOME/.vimrc
fi
