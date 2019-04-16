# Install neovim
yay --noconfirm -S neovim

mkdir $HOME/.config/nvim
ln -s $HOME/.dotfiles/vim/init.vim.symlink $HOME/.config/nvim/init.vim