# Peers Dotfiles
## What's this
These are my dotfiles. I have started a small series about dotfiles and how to create them over on my website http://peerlator.com. My dotfiles could act as a boilerplate, just like [these](https://github.com/nelsonmestevao/dotfiles) did for mine, or if you like my configurations, you can simply install these on your system. However I would definetely recommend, that you **read** my configuration. First of all this acts as learning material, secondly you would want to know what is on your system and third, you should be able to modify the configuration of your system. To make everything a little easier, I would recommend to you, to visit my [blog](http://peerlator.com) and read the series about dotfiles.

Documentation can be found in the KEYBINDINGS.md file. However this is only for the i3wm.
## Installation
Just like the dotfiles I forked, my dotfiles follow a very modular design. If you don't want a part of my dotfiles simply delete the folder

If you want to customize the dotfiles and back them up to github I would recommend, that you simply fork this repository and then clone the reposetory to `$HOME/.dotfiles`. If you do not wat to backup or don't want to modify you can simply run 
```bash
git clone https://github.com/peerlator/dotfiles-new.git ~/.dotfiles
```

Now, that you have a copy of the dotfiles on your computer, run the following
```bash
cd ~/.dotfiles
make install
```
## Credits
- Original https://github.com/nelsonmestevao/dotfiles

## Disclaimer
As you probably know, you shouldn't just run my Makefile without reading it
first. And if you read it, you will understand that it calls other scripts like
`install.sh` which depend on `helpers.sh`. Read those, it's the only way that
you can trust what it is doing.