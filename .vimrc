" Basic Settings --------------------{{{
set nocompatible              " disable vi compatibility. 
set history=256               " Number of things to remember in hisroty
set autowrite                 " Writes on make/shell commands
set autoread                  
" Backup
set nobackup
set nowritebackup

" Match and search
set hlsearch                  " highlight search
set incsearch                 " typing while matching 
set ignorecase                " Do case in sensitive matching with 
set smartcase                 " be sensitive when there's a captial letter

set laststatus=2
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
syntax on
filetype plugin indent on    " Automatically detect file types. 
" }}}
"
"
" Plugins ---------------------------{{{
" set the runtime path to include Vundle and initialize
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
"
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
"
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
"
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
"
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

Plugin 'scrooloose/nerdtree'
if has('python')
    Plugin 'davidhalter/jedi-vim'
endif

" All of your Plugins must be added before the following line
call vundle#end()            " required
"
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" }}} 





autocmd! bufwritepost .vimrc source %





"""""""""""""""""""""""""KEY MAPPING""""""""""""""""""""""""""""""

nnoremap <silent> <F3> :NERDTreeToggle<CR>
let mapleader = ","
let maplocalleader="\\"
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
inoremap <c-u> <esc>viwU$a
nnoremap <c-u> viwU$
inoremap <c-d> <esc>ddi
inoremap jk <esc> 

" unable the arrow keys both in normal and insert mode
nnoremap <UP> <nop>
nnoremap <DOWN> <nop>
nnoremap <LEFT> <nop>
nnoremap <RIGHT> <nop>

inoremap <UP> <nop>
inoremap <DOWN> <nop>
inoremap <LEFT> <nop>
inoremap <RIGHT> <nop>
