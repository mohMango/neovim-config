if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()
" LSP
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
Plug 'neovim/nvim-lspconfig'
Plug 'tami5/lspsaga.nvim', { 'branch': 'nvim51' }

" Git
Plug 'tpope/vim-fugitive'
Plug 'lewis6991/gitsigns.nvim'

" My Love 
Plug 'mbbill/undotree'

" completion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-buffer'
Plug 'onsails/lspkind-nvim'

" For luasnip users
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'tzachar/cmp-tabnine', { 'do': './install.sh' }

" Themes
Plug 'gruvbox-community/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'folke/lsp-colors.nvim'
Plug 'hzchirs/vim-material'

" telescope requirements...
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'nvim-telescope/telescope-project.nvim'

" I love comments
Plug 'tpope/vim-commentary'

" add semicolon for me
Plug 'sbdchd/neoformat'

" close what I has open
Plug 'windwp/nvim-autopairs'

" fast html
Plug 'mattn/emmet-vim'

" Mark Down
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

" Some icons
Plug 'kyazdani42/nvim-web-devicons'

" Float term
Plug 'voldikss/vim-floaterm'

" File Explorer tree
Plug 'kyazdani42/nvim-tree.lua'

call plug#end()

