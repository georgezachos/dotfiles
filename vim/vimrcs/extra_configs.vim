" let maplocalleader = "\"

" " Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif


" tmux will only forward escape sequences to the terminal if surrounded by a DCS sequence
" http://sourceforge.net/mailarchive/forum.php?thread_name=AANLkTinkbdoZ8eNR1X2UobLTeww1jFrvfJxTMfKSq-L%2B%40mail.gmail.com&forum_name=tmux-users

if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

let g:polyglot_disabled=['latex']
let g:vimtex_view_method = 'skim'

map ,* *<C-O>:%s///gn<CR>

:nnoremap <Leader>A :%s/\<<C-r><C-w>\>//g<Left><Left>

:set cursorline
" call neomake#configure#automake('nrwi', 500)
if system('uname -s') == "Darwin\n"
  set clipboard=unnamed "OSX
else
  set clipboard=unnamedplus "Linux
endif
"let g:ale_fixers = { 'python': ['add_blank_lines_for_python_control_statements', 'autopep8', 'isort']}
let g:deoplete#enable_at_startup = 1
"inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
let g:deoplete#enable_refresh_always = 1

let g:languagetool_jar='$HOME/languagetool/languagetool-commandline.jar'
