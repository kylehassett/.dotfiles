set nocompatible

call plug#begin('~/.config/nvim/autoload/plugged')

  Plug 'williamboman/mason.nvim'
  Plug 'williamboman/mason-lspconfig.nvim'
  Plug 'neovim/nvim-lspconfig'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'voldikss/vim-floaterm'
  Plug 'glepnir/lspsaga.nvim', { 'branch': 'main' }
  Plug 'gpanders/editorconfig.nvim'
  Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
  Plug 'airblade/vim-gitgutter'
  Plug 'airblade/vim-rooter'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'dracula/vim', { 'as': 'dracula' }
  Plug 'leafOfTree/vim-matchtag'
  Plug 'lukas-reineke/indent-blankline.nvim'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'nvim-lualine/lualine.nvim'
  Plug 'Pocco81/auto-save.nvim'
  Plug 'steelsojka/headwind.nvim'

call plug#end()
