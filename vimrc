" Use vim settings, rather then vi settings. This must be first,
" because it changes other options as side a effect.
set nocompatible
filetype off

"================================== vim plugins  ============================== 
" set the runtime path to include Vundle and initialize 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'                  " vim plugin manager. 
Plugin 'scrooloose/nerdtree'                " project folders tree. 
Plugin 'kien/ctrlp.vim'                     " super searching.
Plugin 'tpope/vim-fugitive'                 " git integration.
Plugin 'tmhedberg/SimpylFold'               " code folding. 
Plugin 'sansyrox/vim-python-virtualenv'     " venv support.
                          
Plugin 'Valloric/YouCompleteMe'             " auto-complete. 
Plugin 'vim-scripts/indentpython.vim'       " python identation.     
Plugin 'sheerun/vim-polyglot'               " code auto-identaion.
Plugin 'vim-syntastic/syntastic'            " syntax checking. 
Plugin 'nvie/vim-flake8'                    " PEP8 syntax cheking. 
Plugin 'rstacruz/vim-closer'                " ([{ auto-complete
Plugin 'tpope/vim-surround'                 " ([{ auto-complete

Plugin 'altercation/vim-colors-solarized'   " theme for vim.
Plugin 'jnurmine/Zenburn'                   " theme for terminal mode.
Plugin 'vim-airline/vim-airline'            " airline status bar 
Plugin 'vim-airline/vim-airline-themes'     " themes for airline status bar.  
Plugin 'morhetz/gruvbox'                    " retro theme.

"Plugin 'python-rope/ropevim'                " python refactoring

" powerline status bar.
" Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
 
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

"call togglebg#map("<F5>")

"================================= plugins setup ============================== 
let NERDTreeIgnore=['\.pyc$', '\~$']       " ignore files in NERDTree.

let g:SimpylFold_docstring_preview=1       " show docstring for folded code. 
let g:airline_powerline_fonts=1
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0
let g:ycm_python_binary_path='/usr/bin/python3'
let python_highlight_all = 1 

let g:airline_theme='powerlineish'
let g:python3_host_prog='/usr/bin/python3'

"Fonts for the Status Line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

"Unicode symbols for the Status Line
let g:airline_left_alt_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_alt_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.readonly = '∥'
let g:airline_symbols.whitespace = 'Ξ'

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

set laststatus=2
set t_Co=256

" flagging unnecessary whitespace.
au BufNewFile, BufRead *.py, *.pwc, *.c, *.h match BadWhitespace /\s\+$/ 

colors gruvbox 
set background=dark
