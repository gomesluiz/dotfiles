" set compatibility to Vim only.
set nocompatible

" helps force plug-ins to load correctly when it is turned back and below
filetype off 

" turn on syntax highlighting
syntax on

" for plug-ins to load correctly
filetype plugin indent on

" turn off modelines
set modelines=0

" automatically wrap text that extends beyond the screen length.
set wrap

" vim's auto indentation feature does not work properly with text 
" copied from outside  of vim. press the <F2> key toggle paste 
" mode on/off.
nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F2>

set textwidth=79
set formatoptions=tcqrn1 
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround 

set showcmd	    " show (partial) command in status line
set showmatch	  " show matching brackets
set ignorecase	" do case insensitive matching
set smartcase	  " do smart case matching
set incsearch	  " incremental search
set autowrite	  " automatically save before commands like :next and :make
set hidden	    " hide buffers when they are abondoned
set mouse=a	    " enable mouse usage (all modes)
