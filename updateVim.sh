#!/bin/sh
cd ~
rm -rf vim*
git clone https://github.com/ssmith73/vim2015.git
mv ./vim2015/.vimrc .
rm -rf .vim/*
echo "Installing plugins..."
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vi -c 'PluginInstall' -c ':qa'
clear
clear
echo "Done!"
