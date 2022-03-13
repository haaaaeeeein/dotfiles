#!/bin/bash
BASEDIR=$(dirname $0)

# vim
cp $BASEDIR/.vimrc ~/.vimrc
if ! [ -e ~/.vim/bundle/Vundle.vim ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
mkdir -p ~/.vim/colors
cd ~/.vim/colors
curl -O https://raw.githubusercontent.com/nanotech/jellybeans.vim/master/colors/jellybeans.vim
vim +PluginInstall +qall

# tmux
cp $BASEDIR/.tmux.conf ~/.tmux.conf
tmux source-file ~/.tmux.conf

