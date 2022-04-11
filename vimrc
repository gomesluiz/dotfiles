" Use vim settings, rather then vi settings. This must be first,
" because it changes other options as side a effect.
set nocompatible
filetype off

"================================== vim plugins  ============================== 
"call plug#begin()
"Plug 'preservim/NERDTree'
"Plug 'vim-latex/vim-latex'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"call plug#end()

" set the runtime path to include Vundle and initialize 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required.
Plugin 'gmarik/Vundle.vim'

call vundle#end()
filetype plugin indent on 

"============================= general configuration ========================== 
set number relativenumber		      " line numbers are good
set backspace=indent,eol,start		" allow backspace in insert mode
set history=1000			            " store lots of :cmdline history
set showcmd				                " show incomplete cmds down the bottom
set gcr=a:blink0			            " disable cursor link
set visualbell				            " no sounds
set autoread				              " reload files changed outside vim 
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab 
set splitbelow
set splitright

" This make vim act like all others editors, buffers can exist in the backgrou-
" nd without being in a window.
set hidden 

" turn on syntax highlighting
syntax on

"================================  keys bindings ============================== 
map <C-n> :NERDTreeToggle<CR>

" split keys navigation.
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"===============================  vim-latex setup ============================= 
let g:Tex_MultipleCompileFormats='pdf'
let g:Tex_DefaultTargetFormat='pdf'
