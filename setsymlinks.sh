#!/bin/bash

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm || echo skipping cloning tmux plugin folder

ln -sfv $PWD/chunkwmrc ~/.chunkwmrc
ln -sfv $PWD/skhd ~/.skhd
ln -sfv $PWD/config ~/.config
ln -sfv $PWD/tmux.conf ~/.tmux.conf
ln -sfv $PWD/vim ~/.vim
