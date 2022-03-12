#!/bin/bash
BASEDIR=$(dirname $0)

# vim
cp -u $BASEDIR/.vimrc ~/.vimrc
if ! [ -e ~/.vim/bundle/Vundle.vim ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
vim +PluginInstall +qall

# tmux
cp -u $BASEDIR/.tmux.conf ~/.tmux.conf
tmux source-file ~/.tmux.conf

