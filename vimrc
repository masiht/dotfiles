""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VUNDLE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Townk/vim-autoclose'
Plugin 'vim-scripts/linediff.vim'
Plugin 'vim-scripts/gitv'
Plugin 'vim-scripts/git-cheat'
Plugin 'sukima/xmledit'
Plugin 'luochen1990/rainbow'

call vundle#end()
filetype indent plugin on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NORMAL CONFIG
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
set background=dark
colorscheme solarized
set t_Co=256
set hidden
set wildmenu
set showcmd
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set nostartofline
set ruler
set laststatus=2
set confirm
set t_vb=
set cmdheight=2
set notimeout ttimeout ttimeoutlen=200
set pastetoggle=<F11>
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set smarttab
set number
set noscb
set colorcolumn=80
map Y y$
map <C-H> <C-W>h<C-W>_
map <C-L> <C-W>l<C-W>_
autocmd VimResized * :wincmd =

let mapleader = ","
let maplocalleader = ","
nnoremap <silent> <leader><leader> :ClearCtrlPCache<cr>\|:CtrlP<cr>
nnoremap <F2> :set invnumber<CR>

autocmd BufWritePre * :%s/\s\+$//e

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" OPEN FILES IN DIRECTORY OF CURRENT FILE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>e :edit %%
map <leader>v :vsp %%
map <leader>s :sp %%
map <leader>h :sp %%

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" RAINBOW PARENTHESES IMPROVED
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:rainbow_active = 1
let g:rainbow_conf = {
    \   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
    \   'ctermfgs': ['lightred', 'cyan', 'green', 'lightmagenta', 'red',
    \                'darkcyan', 'darkgreen', 'magenta'],
    \   'operators': '_,_',
    \   'parentheses': [['(',')'], ['\[','\]'], ['{','}']],
    \   'separately': {
    \       '*': {},
    \       'lisp': {
    \           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3',
    \                      'firebrick', 'darkorchid3'],
    \           'ctermfgs': ['darkgray', 'darkblue', 'darkmagenta',
    \                        'darkcyan', 'darkred', 'darkgreen'],
    \       },
    \       'html': {
    \           'parentheses': [['(',')'], ['\[','\]'], ['{','}']]
    \       },
    \       'tex': {
    \           'operators': '',
    \           'parentheses': [['(',')'], ['\[','\]']],
    \       },
    \   }
    \}
