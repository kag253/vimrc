" This .vimrc file uses vundle, nerdtree, ctrlp, and a solarized colorscheme
" Once Vundle is set up, running ':PluginInstall' will install nerdtree and
" ctrlp. The solarized colorsheme needs to be installed on its own.
"
" Links
" http://vimawesome.com/
" https://github.com/VundleVim/Vundle.vim
" https://github.com/altercation/vim-colors-solarized
"

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Nerd Tree plugin
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ


set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces
set number          " Turn on line numbering


syntax enable
set background=dark
colorscheme solarized

"Make visual mode work with mouse
set mouse=a

"Make < > shifts keep selection
vnoremap < <gv
vnoremap > >gv

"Maps <shift><right-arrow> to <tab> and <shift><left-arrow> to <shift><tab>
"so that I can tab indent and shift-tab dedent like a normal person
map <Tab> >
map <S-Tab> <

"Makes backspace/delete actually delete things in visual mode
vmap <BS> x

" Map Ctrl-n to open Nerd Tree
map <C-n> :NERDTreeToggle<CR>

" change CtrlP's default opening action to be in a new tab
let g:ctrlp_prompt_mappings = {
     \ 'AcceptSelection("e")': ['<c-t>'],
         \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
             \ }


