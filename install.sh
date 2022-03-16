#!/bin/bash
HERE=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# vim
cp $HERE/.vimrc ~/.vimrc
if ! [ -e ~/.vim/bundle/Vundle.vim ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
mkdir -p ~/.vim/colors
cd ~/.vim/colors
curl -O https://raw.githubusercontent.com/nanotech/jellybeans.vim/master/colors/jellybeans.vim
vim +PluginInstall +qall

# tmux
cp $HERE/.tmux.conf ~/.tmux.conf
tmux source-file ~/.tmux.conf

