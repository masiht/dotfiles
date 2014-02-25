""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VUNDLE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'kien/ctrlp.vim'
Bundle 'greatghoul/vim-web-indent'
Bundle 'hynek/vim-python-pep8-indent'
Bundle 'jnurmine/Zenburn'
Bundle 'Townk/vim-autoclose'
Bundle 'vim-scripts/linediff.vim'
Bundle 'vim-scripts/gitv'
Bundle 'davidhalter/jedi-vim'
Bundle 'vim-scripts/Clam'
Bundle 'scrooloose/syntastic'
Bundle 'vim-scripts/git-cheat'
Bundle 'vim-scripts/diffchanges.vim'
Bundle 'sukima/xmledit'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-abolish'
Bundle 'Rykka/riv.vim'
Bundle 'luochen1990/rainbow'
Bundle 'tell-k/vim-autopep8'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NORMAL CONFIG
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype indent plugin on
syntax on
set t_Co=256
colorscheme zenburn
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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SYNTASTIC
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:syntastic_python_checkers = ['pylint', 'pyflakes', 'python', 'pep8']
let g:syntastic_javascript_checkers = ['gjslint']
