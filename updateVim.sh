#!/bin/sh
cd ~
rm -rf scripts*
git clone https://github.com/ssmith73/scripts.git
rm -rf vim*
git clone https://github.com/ssmith73/vim2015.git
cp ./vim2015/.vimrc .
rm -rf .vim/*
echo "Installing plugins..."
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vi -c 'PluginInstall' -c ':qa'
clear
clear
echo "Setting up Bash!"
sleep 2
rm -rf .bash
rm -f .bashrc
cp -r ./scripts/.bash .
cp ./scripts/.bashrc .
clear
clear
echo "Done!!"


