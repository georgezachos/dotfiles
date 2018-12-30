""""""""""""""""""""""""""""""
" => bufExplorer plugin
""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='name'
map <leader>o :BufExplorer<cr>


""""""""""""""""""""""""""""""
" => MRU plugin
""""""""""""""""""""""""""""""
let MRU_Max_Entries = 400
map <leader>f :MRU<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
let g:NERDTreeQuitOnOpen = 1
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>


""""""""""""""""""""""""""""""
" => YankStack
""""""""""""""""""""""""""""""
let g:yankstack_yank_keys = ['y', 'd']

nmap <c-p> <Plug>yankstack_substitute_older_paste
nmap <c-P> <Plug>yankstack_substitute_newer_paste


"""""""""""""""""""""""""""""""
"" => vin-snippets / ultisnips
"""""""""""""""""""""""""""""""
ino <c-j> <c-r>=snipMate#TriggerSnippet()<cr>
snor <c-j> <esc>i<right><c-r>=snipMate#TriggerSnippet()<cr>
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-n>"
let g:UltiSnipsJumpBackwardTrigger="<c-p>"


""""""""""""""""""""""""""""""
" => Vim grep
""""""""""""""""""""""""""""""
let Grep_Skip_Dirs = 'RCS CVS SCCS .svn generated'
set grepprg=/bin/grep\ -nH


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-multiple-cursors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-s>'
let g:multi_cursor_select_all_word_key = '<A-s>'
let g:multi_cursor_start_key           = 'g<C-s>'
let g:multi_cursor_select_all_key      = 'g<A-s>'
let g:multi_cursor_next_key            = '<C-s>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => surround.vim config
" Annotate strings with gettext
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vmap Si S(i_<esc>f)
au FileType mako vmap Si S"i${ _(<esc>2f"a) }<esc>

"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => air/lightline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:lightline = {'colorscheme': 'base16_ashes'}
" let cname = g:colors_name
" let g:lightline = {'colorscheme': substitute(g:cname,"-","_","g")}
let g:airline_theme='base16'
" let g:lightline = {
"             \ 'colorscheme': 'seoul256',
"             \ 'active': {
"             \   'left': [ ['mode', 'paste'],
"             \             ['fugitive', 'readonly', 'filename', 'modified'] ],
"             \   'right': [ [ 'lineinfo' ], ['percent'] ]
"             \ },
"             \ 'component': {
"             \   'readonly': '%{&filetype=="help"?"":&readonly?"🔒":""}',
"             \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
"             \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
"             \ },
"             \ 'component_visible_condition': {
"             \   'readonly': '(&filetype!="help"&& &readonly)',
"             \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
"             \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
"             \ },
"             \ 'separator': { 'left': ' ', 'right': ' ' },
"             \ 'subseparator': { 'left': ' ', 'right': ' ' }
"             \ }

set noshowmode


let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

let g:airline#extensions#tabline#enabled = 1

let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = ' ' "│┃║⁞⋮
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vimroom
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:goyo_width=100
let g:goyo_margin_top = 2
let g:goyo_margin_bottom = 2
nnoremap <silent> <leader>z :Goyo<cr>

function! s:goyo_enter()
    silent !tmux set status off
    silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
    " set noshowmode
    set noshowcmd
    set scrolloff=999
    Limelight
    " ...
endfunction

function! s:goyo_leave()
    silent !tmux set status on
    silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
    " set showmode
    set showcmd
    set scrolloff=5
    Limelight!
    " ...
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git gutter (Git diff)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gitgutter_enabled=0
nnoremap <silent> <leader>d :GitGutterToggle<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => scvim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:sclangPipeApp     = "~/.local/share/nvim/plugged/scvim/bin/start_pipe"
let g:sclangDispatcher  = "~/.local/share/nvim/plugged/scvim/bin/sc_dispatcher"
let g:scFlash = 1
let g:sclangTerm = "open -a iTerm.app"

"
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " => Autoformat
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" noremap <leader>a :Autoformat<CR>
" " au BufWrite * :Autoformat
" let g:formatter_yapf_style = 'pep8'
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nmap <F8> :TagbarToggle<CR>
nnoremap <leader>B :TagbarToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => rainbow_parentheses
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => tComment
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tComment extra mappings:
" yank visual before toggle comment
vmap gy ygvgc
" yank and past visual before toggle comment
vmap gyy ygvgc'>gp'.
" yank line before toggle comment
nmap gy yygcc
" yank and paste line before toggle comment and remember position
" it works both in normal and insert mode
" Use :t-1 instead of yyP to preserve registers
nmap gyy mz:t-1<cr>gCc`zmz
imap gyy <esc>:t-1<cr>gCcgi

call tcomment#type#Define('processing', '// %s')


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vimtex
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufReadPre *.tex let b:vimtex_main = 'main.tex'


command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)

set grepprg=rg\ --vimgrep


" let g:deoplete#enable_at_startup = 1
" let airline#extensions#tmuxline#snapshot_file = "~/.tmux-statusline-colors.conf"
" let g:airline#extensions#tmuxline#enabled = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vimtex
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'python': ['yapf', 'isort', 'add_blank_lines_for_python_control_statements'],
\   'cpp': ['clang-format'],
\}
" Set this variable to 1 to fix files when you save them.
" let g:ale_fix_on_save = 1

let g:ale_linters = {'python':['flake8']}
