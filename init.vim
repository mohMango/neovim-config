" Fundamentals "{{{
" ---------------------------------------------------------------------
syntax enable

let mapleader=" "

set mouse=a
set title
set number relativenumber
set signcolumn=yes
set colorcolumn=80
set smarttab
set cindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set cmdheight=2
set expandtab
set smartindent
set nohlsearch
set hidden
set noerrorbells
set updatetime=300
set shortmess+=c
set termguicolors
set noswapfile
set nobackup
set scrolloff=8
set termguicolors
set incsearch
set undodir=~/.vim/undo/
set undofile
set foldmethod=syntax
set foldlevelstart=20
filetype plugin on
set pumheight=20

set clipboard=unnamedplus

" Don't redraw while executing macros (good performance config)
set lazyredraw
" Ignore case when searching
set ignorecase
set ai "Auto indent
set si "Smart indent
set nowrap "No Wrap lines
" Finding files - Search down into subfolders
set path+=**
set wildignore+=*/node_modules/*
set wildignore+=**/.git/*

set completeopt=menu,menuone,noselect

set noshowmode

"}}}

" Highlights "{{{
" ---------------------------------------------------------------------
" set cursorline

augroup YankHighlight
  autocmd!
  autocmd TextYankPost * silent! lua vim.highlight.on_yank()
augroup end
"}}}

" File types "{{{
" ---------------------------------------------------------------------
" JavaScript
au BufNewFile,BufRead *.es6 setf javascript
" TypeScript
au BufNewFile,BufRead *.tsx setf typescriptreact
" Markdown
au BufNewFile,BufRead *.md set filetype=markdown
au BufNewFile,BufRead *.mdx set filetype=markdown

"}}}

" Imports "{{{
" ---------------------------------------------------------------------
runtime ./plug.vim
runtime ./maps.vim
"}}}

" Syntax theme "{{{
" ---------------------------------------------------------------------

set termguicolors
set winblend=0
set wildoptions=pum
set pumblend=5
set background=dark
" Use NeoSolarized
" let g:neosolarized_termtrans=1
" runtime ./colors/NeoSolarized.vim
" colorscheme NeoSolarized
colorscheme gruvbox
let g:gruvbox_italic=1  

"}}}

" Extras "{{{
" ---------------------------------------------------------------------
set exrc
"}}}

" vim: set foldmethod=marker foldlevel=0:
