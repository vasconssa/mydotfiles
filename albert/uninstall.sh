#!/usr/bin/env sh

yay -Rs albert

unlink "$HOME/.config/albert/albert.conf"
unlink "$HOME/.config/albert/org.albert.extension.websearch/engines.json"
