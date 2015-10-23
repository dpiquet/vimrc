" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

set t_Co=256

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions+=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

set nocompatible              " be iMproved, required
filetype off                  " required

let g:solarized_termcolors=16

set runtimepath=~/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim74,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after,/etc/vim-plugins

" set the runtime path to include Vundle and initialize
set rtp+=/etc/vim-plugins/bundle/Vundle.vim
call vundle#begin()
    " let Vundle manage Vundle, required
    Plugin 'VundleVim/Vundle.vim'

    " Correct colors
    Plugin 'godlygeek/csapprox'

    " Vim colors and theme
    Plugin 'nanotech/jellybeans.vim'

    " solarized vim
    Plugin 'altercation/vim-colors-solarized'

    " Up to date PHP
    Plugin 'StanAngeloff/php.vim'
    
    " Additionnal color schemes
    Plugin 'flazz/vim-colorschemes'

    " Twig syntax
    Plugin 'beyondwords/vim-twig'

call vundle#end()

syntax on
set background=dark
colorscheme Chasing_Logic

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

if has("autocmd")
  filetype plugin indent on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

filetype plugin indent on

set tabstop=4
set shiftwidth=4
" set expandtab
set smarttab
set number
set title
set wildmenu

" Show nbsp character
set listchars=nbsp:•,extends:#,trail:.,tab:>-
set list


au FileType yml et
