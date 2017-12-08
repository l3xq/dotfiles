
set list
set listchars=tab:▸\ ,eol:¬

set nocompatible

" Vundle PluginManager
" *********************************
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" scheme related
Plugin 'flazz/vim-colorschemes'
Plugin 'morhetz/gruvbox'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kristijanhusak/vim-hybrid-material'

Plugin 'vim-scripts/a.vim'
Plugin 'tmux-plugins/vim-tmux'
Plugin 'christoomey/vim-tmux-navigator'
"Plugin 'joonty/vdebug'

Plugin 'mattn/emmet-vim'
Plugin 'sheerun/vim-polyglot'

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'

Plugin 'Auto-Pairs'
Plugin 'matchit.zip'
"Plugin 'tComment'
"Plugin 'L9'
"Plugin 'FuzzyFinder'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'elzr/vim-json'
" FuzzyFinder Ctrl+p
Plugin 'kien/ctrlp.vim'

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'

call vundle#end()

"***********************************
"
"
filetype plugin indent on
syntax on
filetype indent on

set number
set relativenumber
set incsearch
set ignorecase
set smartcase
set nohlsearch
set expandtab
set tabstop=4
set softtabstop=0
set noswapfile
set nobackup
set nowrap

" Copy current line Shift+y ; like Shift+d deletes current line
noremap Y y$

set t_Co=256

if &term =~ '256color'
    " disable Background Color Erase (BCE) so that color schemes
    " render properly when inside 256-color tmux and GNU screen.
    "  see also http://snk.tuxfamily.org/log/vim-256color-bce.html
    set t_ut=
endif

" NERDTree Setup
" NERDTree auto-open at startup
" TODO: Don't open it by default
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" Close vim if only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Change default arrows
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
" Map NERDTree to a Ctrl+n
map <C-n> :NERDTreeToggle<CR>

" Show status line
set laststatus=2

" Show what mode are you currently in
set showmode

" Allow modeline
set modeline
set ruler

" Airline setup
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" vim-hybrid-material  setup
let g:enable_bold_font = 1
let g:airline_theme = "hybrid"
set background=dark

colorscheme hybrid
syntax enable

" Vdebug setup
"let g:vdebug_options = {}
"let g:vdebug_options["port"] = 9000
"let g:vdebug_options["marker_closed_tree"] = '▸'
"let g:vdebug_options["marker_open_tree"] = '▾'
"let g:vdebug_options["timeout"] = '20'
""let g:vdebug_options["on_close"] = 'detach'
"let g:vdebug_options["break_on_open"] = '1'
"let g:vdebug_options["ide_key"] = 'PHPSTORM'
"let g:vdebug_options["continuous_mode"] = '0'
"let g:vdebug_options["marker_default"] = '⬦'
"let g:vdebug_options["watch_window_style"] = 'expanded'
"let g:vdebug_options["debug_file_level"] = '0'
"let g:vdebug_options["debug_file"] = ''
"let g:vdebug_options["debug_window_level"] = '0'



" suggested syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Fix backspace not working properly in some cases
set backspace=2
