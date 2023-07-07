if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()
  
  " Git
  Plug 'tpope/vim-fugitive'
  Plug 'lewis6991/gitsigns.nvim'

  " Plug 'cohama/lexima.vim'
  Plug 'jiangmiao/auto-pairs'
  " Plug 'tpope/vim-commentary'

if has("nvim")
  " Plug 'honza/vim-snippets'
  "Plug 'SirVer/ultisnips'
  Plug 'hoob3rt/lualine.nvim'

  " LSP Support
  Plug 'VonHeikemen/lsp-zero.nvim', { 'branch': 'v1.x' }
  Plug 'williamboman/mason.nvim'
  Plug 'williamboman/mason-lspconfig.nvim'
  Plug 'neovim/nvim-lspconfig'

  " Autocomplete
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'saadparwaiz1/cmp_luasnip'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-nvim-lua'

  " Snippets
  Plug 'L3MON4D3/LuaSnip'
  Plug 'rafamadriz/friendly-snippets'  
  
  Plug 'jose-elias-alvarez/null-ls.nvim'
  "Plug 'glepnir/lspsaga.nvim'
  " Plug 'folke/lsp-colors.nvim'
  " Plug 'nvim-lua/completion-nvim'
  
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
  Plug 'nvim-treesitter/nvim-treesitter-context'
  
  " Plug 'nvim-lua/popup.nvim'

  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'

  Plug 'dracula/vim', { 'as': 'dracula' }
  Plug 'yuttie/comfortable-motion.vim'
  Plug 'nvim-tree/nvim-tree.lua'
  Plug 'kyazdani42/nvim-web-devicons'
endif

call plug#end()
