set nocompatible					" be iMproved, required
filetype off						" required

set guifont=DejaVu\ Sans\ Mono\ For\ Powerline:h11

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'bling/vim-airline'					" Lightweight vimscript version of powerline
Plugin 'vim-airline/vim-airline-themes'		" vim-airline themes
Plugin 'bling/vim-bufferline'				" Display open buffers
Plugin 'majutsushi/tagbar'					" Magical C++ tagbar
Plugin 'sjl/gundo.vim'						" 'Graphical' Undo tree visualizer
Plugin 'mhinz/vim-signify'					" Add a sign column that shows file changes (needs a version control system)
Plugin 'scrooloose/syntastic'				" Syntax Error Checking
Plugin 'Valloric/YouCompleteMe'				" Code Completion
Plugin 'godlygeek/tabular'					" Magic Tab alignment
Plugin 'NigoroJr/color_coded-colorschemes'	" Solarizeded Color Scheme (Upgraded Solarized to support color_coded plugin)
Plugin 'rdnetto/YCM-Generator'				" Plugin to generate YCM extra conf file
Plugin 'jeaye/color_coded'					" Plugin to colorize the text when programming

" All of your Plugins must be added before the following line
call vundle#end()					" required
filetype plugin indent on			" required

syntax on
set number
set background=dark
colorscheme solarizeded

set backspace=indent,eol,start
set laststatus=2
set tabstop=4

" Vim-Airline config
let g:airline_powerline_fonts	= 1
let g:airline_theme		= 'solarized'

" TagBar Config
nmap <F8> :TagbarToggle<CR>

" Gundo config
" let g:gundo_prefer_python3	= 1		" Enable Python3 Support
nnoremap <F5> :GundoToggle<CR>			" Bind Gundo Tree to F5 in Normal Mode
