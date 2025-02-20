""" General

" Space as leader
let mapleader = " " 
let g:mapleader = " "

set t_Co=256
set termguicolors
set background=dark

set noswapfile
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set number relativenumber
set ignorecase smartcase

set encoding=utf-8
set fileencoding=utf-8
scriptencoding utf-8

set linebreak
set showbreak=↪
set breakindent
set wrap

set foldmethod=indent
set foldnestmax=2
set nofoldenable

set cursorline
set colorcolumn=99
set scrolloff=6

set mouse=a
set clipboard+=unnamed,unnamedplus

" airline shows mode already
set noshowmode

set confirm
set visualbell noerrorbells
set history=1000
set autowrite

set autoread
au CursorHold * checktime
au FocusGained,BufEnter * :checktime

set splitright
set splitbelow
set wildmenu

set hlsearch
set incsearch


"" import
let s:config_root = expand('<sfile>:p:h')
execute 'source ' . s:config_root . '/plugin.vim'
execute 'source ' . s:config_root . '/mapping.vim'

let s:local_config = s:config_root . '/local.vim'
if filereadable(s:local_config)
  execute 'source ' . s:local_config
endif


" vim: ts=2 sw=2 et
