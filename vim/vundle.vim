"
"  Usage: add the following line into ~/.vimrc
"
"    source /path/to/this/file
"

" -----------------------------------------------------------------------------
" Vundle Plugins
" -----------------------------------------------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Plugins list start

"Plugin 'mxw/vim-jsx'
Plugin 'sheerun/vim-polyglot'

"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'

Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

Plugin 'scrooloose/syntastic'

Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'majutsushi/tagbar'

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'

Plugin 'christoomey/vim-tmux-navigator'

" Plugins list end

call vundle#end()            " required

" Plugin settings

" --- vim-jsx
"let g:jsx_ext_required = 0 " Allow JSX in normal JS files

"" ----- vim-airline/vim-airline -----
"" Always show statusbar
"set laststatus=2
"
"" Fancy arrow symbols, requires a patched font
"" To install a patched font, run over to
""     https://github.com/abertsch/Menlo-for-Powerline
"" download all the .ttf files, double-click on them and click "Install"
"" Finally, uncomment the next line
"let g:airline_powerline_fonts = 1
"
"" Show PASTE if in paste mode
"let g:airline_detect_paste=1
"
"" Show airline for tabs too
"let g:airline#extensions#tabline#enabled = 1

" ----- jistr/vim-nerdtree-tabs -----
" Open/close NERDTree Tabs with \t
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
" To have NERDTree always open on startup
"let g:nerdtree_tabs_open_on_console_startup = 0

" ----- scrooloose/syntastic settings -----
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
augroup mySyntastic
    au!
    au FileType tex let b:syntastic_mode = "passive"
augroup END

" ----- xolox/vim-easytags settings -----
" Where to look for tags files
set tags=./tags;,~/.vimtags
" Sensible defaults
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1

" ----- majutsushi/tagbar settings -----
" Open/close tagbar with \b
nmap <silent> <leader>b :TagbarToggle<CR>
" Uncomment to open tagbar automatically whenever possible
"autocmd BufEnter * nested :call tagbar#autoopen(0)

" ----- airblade/vim-gitgutter settings -----
" Required after having changed the colorscheme
hi clear SignColumn
" In vim-airline, only display "hunks" if the diff is non-zero
let g:airline#extensions#hunks#non_zero_only = 1
