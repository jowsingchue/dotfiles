"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'chakrit/vim-thai-keys'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/nerdcommenter'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'

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
" Put your non-Plugin stuff after this line



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PREFERENCES
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" jedi-vim
" disable docstring window to popup during completion
autocmd FileType python setlocal completeopt-=preview

" Mouse and backspace
set mouse=a                     " on OSX press ALT and click
set backspace=indent,eol,start  " allow backspacing over everything in insert mode

" Useful settings
set history=700
set undolevels=700
set showmode        " always show what mode we're currently editing in
set visualbell      " don't beep
set noerrorbells    " don't beep
set guioptions-=m   "remove menu bar
set guioptions-=T   "remove toolbar
set guioptions-=r   "remove right-hand scroll bar
set guioptions-=L   "remove left-hand scroll bar
set autowrite       " save on buffer switch

" don't use TABs but spaces
set tabstop=4
set smarttab
set tags=tags
set softtabstop=4
set expandtab

set shiftwidth=4    " number of space to use for autoindenting
set shiftround      " use multiple of shiftwidth when indenting with '<' and '>'
set autoindent      " always set autoindenting on
set copyindent      " copy the previous indentation on autoindenting

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" Swap files out of the project root
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//

" Showing line numbers and length
set number  " show line numbers
set tw=79   " width of document (used by gd)
set nowrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing
set colorcolumn=80
highlight ColorColumn ctermbg=233

" Show whitespace
" MUST be inserted BEFORE the colorscheme command
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/

" Color scheme
" mkdir -p ~/.vim/colors && cd ~/.vim/colors
" wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400
set t_Co=256
color xoria256

" Enable syntax highlighting
filetype off
filetype plugin indent on
syntax on

" Setup Pathogen to manage your plugins
" mkdir -p ~/.vim/autoload ~/.vim/bundle
" curl -so ~/.vim/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim
" Now you can install any plugin into a .vim/bundle/plugin-name/ folder
call pathogen#infect()

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Better copy & paste
" When you want to paste large blocks of code into vim, press F2 before you
" paste. At the bottom you should see ``-- INSERT (paste) --``.
set pastetoggle=<F2>
set clipboard=unnamed

" Enable Powerline plugin
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
" Settings for Powerline plugin
let g:Powerline_symbols = 'fancy'
set laststatus=2    " Always show the statusline
set encoding=utf-8  " Neccessary to show Unicode glyphs
set noshowmode      " Hide the default mode text (e.g. -- INSERT -- below the statusline)
" Fix Powerline's escape delay
imap <esc> <esc><esc>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" COMMAND ALIASING
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Remove search results with command :H
command! H let @/=""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" KEY MAPPING
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Disable arrow key
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" easier formatting of paragraphs
vmap Q gq
nmap Q gqap

" Rebind <Leader> key to Space Bar
let mapleader = " "
let g:mapleader = " "

" Fast saves
nmap <leader>w :w!<cr>

" Fast quit
nmap <Leader>q :q<cr>
nmap <Leader>Q :q!<cr>

" Fast save&quit
nmap <Leader>wq :wq<cr>

" Down is really the next line
nnoremap j gj
nnoremap k gk

" Easy escaping to normal mode
imap jj <esc>

" Auto change directory to match current file ,cd
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

" Easier window navigation
" bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
" Every unnecessary keystroke that can be saved is good for your health :)
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-h> <C-w>h

" Expand splited window with Ctrl + V
nmap <C-v> :vertical resize +5<cr>

" Toggle NERDTree with Ctrl + B
nmap <C-b> :NERDTreeToggle<cr>

" easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" map sort function to a key
vnoremap <Leader>s :sort<CR>

" easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation

" Familiar commands for file/symbol browsing
map <D-p> :CtrlP<cr>
map <C-r> :CtrlPBufTag<cr>

" Laravel framework commons
nmap <Leader>lr :e app/routes.php<cr>
nmap <Leader>lca :e app/config/app.php<cr>81Gf(%0
nmap <Leader>lcd :e app/config/database.php<cr>
nmap <Leader>lc :e composer.json<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MISCELLANEOUS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Put at the very end of your .vimrc file.
function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END

" Correct settings in order to use the matchit.vim script
source $VIMRUNTIME/macros/matchit.vim
" Correct indentation
source $VIMRUNTIME/macros/matchit.vim
" Integration of the mlint Matlab code checker with the :make command
autocmd BufEnter *.m    compiler mlint