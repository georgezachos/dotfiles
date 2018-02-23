""""""""""""""""""""""""""""""
" => Python section
""""""""""""""""""""""""""""""
let python_highlight_all = 1
au FileType python syn keyword pythonDecorator True None False self

" au BufNewFile,BufRead *.jinja set syntax=htmljinja
" au BufNewFile,BufRead *.mako set ft=mako

au FileType python map <buffer> F :set foldmethod=indent<cr>

au FileType python inoremap <buffer> $r return 
au FileType python inoremap <buffer> $i import 
au FileType python inoremap <buffer> $p print 
au FileType python inoremap <buffer> $f # --- <esc>a
au FileType python map <buffer> <leader>1 /class 
au FileType python map <buffer> <leader>2 /def 
au FileType python map <buffer> <leader>C ?class 
au FileType python map <buffer> <leader>D ?def 
au FileType python set cindent
au FileType python set cinkeys-=0#
au FileType python set indentkeys-=0#

au FileType python nnoremap <buffer> <leader>r :AsyncRun python3 %<CR>


""""""""""""""""""""""""""""""
" => Shell section
""""""""""""""""""""""""""""""
if exists('$TMUX') 
    if has('nvim')
        set termguicolors
    else
        set term=screen-256color 
    endif
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-faust
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType faust nnoremap <buffer> <leader>cf :!faust2svg %:p<CR>
autocmd FileType faust nnoremap <buffer> <leader>cs :!faust2supercollider %:p<CR>
autocmd FileType faust nnoremap <buffer> <leader>cq :!faust2jaqt %:p<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-faust
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au FileType markdown nnoremap <buffer> <leader>cp :Pandoc pdf <CR>
