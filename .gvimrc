

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

" Use tab character, 4 spaces width
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set noexpandtab

" Show special key
set list
set listchars=tab:\|\ ,trail:•
hi SpecialKey ctermfg=7 guifg=gray


" -----------------------------------------------------------------------------
" Mapping
" -----------------------------------------------------------------------------

" Down is really the next line
nnoremap j gj
nnoremap k gk

" better indentation
vnoremap < <gv
vnoremap > >gv


" -----------------------------------------------------------------------------
" Search settings
" -----------------------------------------------------------------------------

set ignorecase
set smartcase
set incsearch        "Find the next match as we type the search
set hlsearch         "Hilight searches by default


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
" Gui settings
" -----------------------------------------------------------------------------

set background=dark
colorscheme desert
set guifont=Inconsolata-dz:h14
set showtabline=2
set linespace=4


" -----------------------------------------------------------------------------
" Scrolling settings
" -----------------------------------------------------------------------------

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1


" -----------------------------------------------------------------------------
" No sound on errors
" -----------------------------------------------------------------------------

set noerrorbells
set novisualbell

