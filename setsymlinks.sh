#!/bin/bash

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


if [ -d "$HOME/.tmux/plugins/tpm" ]; then
     echo -e "\033[1;31m ~/.tmux/plugins/tpm already exists. delete it and rerun the script \033[0m"
 else
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
 fi

ln -sfv $PWD/chunkwmrc ~/.chunkwmrc
ln -sfv $PWD/skhd ~/.skhd
ln -sfv $PWD/config ~/.config
ln -sfv $PWD/tmux.conf ~/.tmux.conf
ln -sfv $PWD/vim ~/.vim

if [ -d "$HOME/.emacs.d" ]; then
     echo -e "\033[1;31m ~/.emacs.d already exists. delete it and rerun the script \033[0m"
 else
     git clone -b develop https://github.com/hlissner/doom-emacs ~/.emacs.d
     cd ~/.emacs.d
     #cp init.example.el init.el
     make install
 fi
