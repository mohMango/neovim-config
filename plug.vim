if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
Plug 'neovim/nvim-lspconfig'

Plug 'tpope/vim-fugitive'
Plug 'lewis6991/gitsigns.nvim'

Plug 'tami5/lspsaga.nvim', { 'branch': 'nvim51' }

Plug 'mbbill/undotree'

" LSP
Plug 'neovim/nvim-lspconfig'

" completion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-buffer'
Plug 'onsails/lspkind-nvim'

" For luasnip users
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

" Themes
Plug 'gruvbox-community/gruvbox'
Plug 'itchyny/lightline.vim'

Plug 'folke/lsp-colors.nvim'

" telescope requirements...
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'nvim-telescope/telescope-project.nvim'

Plug 'tpope/vim-commentary'

Plug 'sbdchd/neoformat'

Plug 'windwp/nvim-autopairs'

Plug 'mattn/emmet-vim'

" Mark Down
Plug 'iamcco/markdown-preview.nvim'


call plug#end()

