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


""""""""""""""""""""""""""""""
" => YankStack
""""""""""""""""""""""""""""""
let g:yankstack_yank_keys = ['y', 'd']

nmap <c-p> <Plug>yankstack_substitute_older_paste
nmap <c-P> <Plug>yankstack_substitute_newer_paste


""""""""""""""""""""""""""""""
" => CTRL-P
""""""""""""""""""""""""""""""
let g:ctrlp_working_path_mode = 0

let g:ctrlp_map = '<c-f>'
map <leader>j :CtrlP<cr>
map <c-b> :CtrlPBuffer<cr>

let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'


"""""""""""""""""""""""""""""""
"" => vin-snippets / ultisnips
"""""""""""""""""""""""""""""""
ino <c-j> <c-r>=snipMate#TriggerSnippet()<cr>
snor <c-j> <esc>i<right><c-r>=snipMate#TriggerSnippet()<cr>
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-n>"
let g:UltiSnipsJumpBackwardTrigger="<c-p>"


""""""""""""""""""""""""""""""
" => neomake
""""""""""""""""""""""""""""""
" When writing a buffer (no delay).
" call neomake#configure#automake('w')
" " When writing a buffer (no delay), and on normal mode changes (after 750ms).
" call neomake#configure#automake('nw', 750)
" " When reading a buffer (after 1s), and when writing (no delay).
" call neomake#configure#automake('rw', 1000)
" " Full config: when writing or reading a buffer, and on changes in insert and
" " normal mode (after 1s; no delay when writing).
" call neomake#configure#automake('nrwi', 500)

""""""""""""""""""""""""""""""
" => Vim grep
""""""""""""""""""""""""""""""
let Grep_Skip_Dirs = 'RCS CVS SCCS .svn generated'
set grepprg=/bin/grep\ -nH


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-multiple-cursors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:multi_cursor_next_key="\<C-s>"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => surround.vim config
" Annotate strings with gettext
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vmap Si S(i_<esc>f)
au FileType mako vmap Si S"i${ _(<esc>2f"a) }<esc>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_powerline_fonts = 1
let g:airline_theme='nord'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => lightline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ }

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
  set noshowmode
  set noshowcmd
  " set scrolloff=999
  Limelight
  " ...
endfunction

function! s:goyo_leave()
  silent !tmux set status on
  silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
  set showmode
  set showcmd
  " set scrolloff=5
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


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Autoformat
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" noremap <leader>a :Autoformat<CR>
" " au BufWrite * :Autoformat
" let g:formatter_yapf_style = 'pep8'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <F8> :TagbarToggle<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ranger
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ranger_map_keys = 0
map <leader>R :Ranger<CR>
let g:NERDTreeHijackNetrw = 0
let g:ranger_replace_netrw = 1


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


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => bbye
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:nnoremap <Leader>q :Bdelete<CR>
