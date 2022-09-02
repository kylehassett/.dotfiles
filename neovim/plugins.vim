set nocompatible

call plug#begin('~/.config/nvim/autoload/plugged')

  Plug 'airblade/vim-gitgutter'
  Plug 'airblade/vim-rooter'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'dracula/vim', { 'as': 'dracula' }
  Plug 'glepnir/lspsaga.nvim', { 'branch': 'main' }
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'leafOfTree/vim-matchtag'
  Plug 'lukas-reineke/indent-blankline.nvim'
  Plug 'mfussenegger/nvim-dap'
  Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
  Plug 'neovim/nvim-lspconfig'
  Plug 'nvim-lualine/lualine.nvim'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'Pocco81/AutoSave.nvim'
  Plug 'steelsojka/headwind.nvim'

call plug#end()
