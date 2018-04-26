set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vim/vimrc

if !has('nvim')
    set ttymouse=xterm2
endif
