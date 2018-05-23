#!/usr/bin/env bash
# Move colors to vim config directory
mkdir -p ~/.vim/colors
cp colors ~/.vim/colors

# Move plugins to vim config directory
mkdir -p ~/.vim/plugins
cp plugins ~/.vim/plugins
cat .vimrc > ~/.vimrc
