if [ "$1" = "dracula.theme" ]
then 
    theme="colorscheme dracula"
    background="set background=dark"
    airline_theme="let g:airline_theme='dracula'"
elif [ "$1" = "gruvbox-dark.theme" ]
then
    theme="colorscheme gruvbox"
    background="set background=dark"
    airline_theme="let g:airline_theme='gruvbox'"
elif [ "$1" = "gruvbox-light.theme" ]
then
    theme="colorscheme gruvbox"
    background="set background=light"
    airline_theme="let g:airline_theme='gruvbox'"
fi

sed -i "/colorscheme/c\\$theme" $HOME/.dotfiles/vim/init.vim.symlink
sed -i "/set background/c\\$background" $HOME/.dotfiles/vim/init.vim.symlink
sed -i "/let g:airline_theme/c\\$airline_theme" $HOME/.dotfiles/vim/init.vim.symlink