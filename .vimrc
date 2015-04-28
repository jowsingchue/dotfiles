

colorscheme desert

" -----------------------------------------------------------------------------
" Basics
" -----------------------------------------------------------------------------

set encoding=utf8
set nocompatible
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set hidden
set history=1000
set number
set wildmode=longest,list
syntax on

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Show special key
set list
set listchars=tab:\|\ ,trail:•
hi SpecialKey ctermfg=DarkGrey guifg=#5A5A5A

" Use tab character, 4 spaces width
filetype plugin indent on
set tabstop=4
set noexpandtab
set softtabstop=0
set shiftwidth=4

" -----------------------------------------------------------------------------
" Search settings
" -----------------------------------------------------------------------------

set ignorecase
set smartcase
set incsearch        "Find the next match as we type the search
set hlsearch         "Hilight searches by default

" Remove search results with command :H
command! H let @/=""

" -----------------------------------------------------------------------------
" Mapping
" -----------------------------------------------------------------------------

" Down is really the next line
nnoremap j gj
nnoremap k gk

" easier indentation
vnoremap < <gv
vnoremap > >gv


" -----------------------------------------------------------------------------
"  Status line customization
" -----------------------------------------------------------------------------

set statusline=%<%t\ %h%w%m%r%y%=C:%v\ L:%l/%L\ (%p%%)
set laststatus=2


" -----------------------------------------------------------------------------
" Set ruler
" -----------------------------------------------------------------------------

set ruler
set rulerformat=%=%h%m%r%w\ %(%c%V%),%l/%L\ %P


" -----------------------------------------------------------------------------
" Scrolling settings
" -----------------------------------------------------------------------------

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1


" -----------------------------------------------------------------------------
" Miscellaneous
" -----------------------------------------------------------------------------

" prevent vim transform text into uppercase or lowecase in visual mode
vmap u <nop>
vmap U <nop>

