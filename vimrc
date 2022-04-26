" Use vim settings, rather then vi settings. This must be first,
" because it changes other options as side a effect.
set nocompatible
filetype off

"================================== vim plugins  ============================== 
" set the runtime path to include Vundle and initialize 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'                  " vundle plugin. 
Plugin 'scrooloose/nerdtree'                " nerdtree plugin. 
Plugin 'tmhedberg/SimpylFold'               " simplyfold plugin. 
Bundle 'Valloric/YouCompleteMe'         
Plugin 'vim-scripts/indentpython.vim'       " auto-identaion. 
Plugin 'vim-syntastic/syntastic'            " syntax checking. 
Plugin 'nvie/vim-flake8'                    " PEP8 syntax cheking. 
Plugin 'jnurmine/Zenburn'                   " theme for terminal mode.
Plugin 'altercation/vim-colors-solarized'   " theme for terminal mode.
Plugin 'kien/ctrlp.vim'                     " super searching.
Plugin 'tpope/vim-fugitive'                 " git integration.

" powerline status bar.
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
 
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
set hidden 
set foldmethod=indent 
set foldlevel=99
set encoding=utf-8                " utf-8 support
set clipboard=unnamed
"================================  keys bindings ============================== 
map <C-n> :NERDTreeToggle<CR>

" split keys navigation.
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <space> za 

call togglebg#map("<F5>")
"================================= plugins setup ============================== 
let NERDTreeIgnore=['\.pyc$', '\~$']       " ignore files in NERDTree.

let g:SimpylFold_docstring_preview=1       " show docstring for folded code. 

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0
let g:ycm_python_binary_path='/usr/bin/python3'

let python_highlight_all = 1 
syntax on
"====================== programming languages setup =========================== 
au BufNewFile, BufRead *.py 
  \ set tabstop=4
  \ set softtabstop=4
  \ set shiftwidth=4
  \ set textwidth=79
  \ set expandtab 
  \ set autoindent
  \ set fileformat=unix

au BufNewFile, BufRead *.js, *.html, *.css 
  \ set tabstop=2
  \ set softtabstop=2
  \ set shiftwidth=2

" flagging unnecessary whitespace.
au BufNewFile, BufRead *.py, *.pwc, *.c, *.h match BadWhitespace /\s\+$/ 

" python with virtual support
py3 << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme zenburn 
endif 

