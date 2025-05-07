set nocompatible

call plug#begin('~/.config/nvim/autoload/plugged')

Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Plug 'voldikss/vim-floaterm'
Plug 'kkharji/lspsaga.nvim', { 'branch': 'main' }
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
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'nvim-lua/popup.nvim'
Plug 'stevearc/dressing.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'MunifTanjim/nui.nvim'
Plug 'MeanderingProgrammer/render-markdown.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-media-files.nvim'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'mattn/emmet-vim'
Plug 'dcampos/cmp-emmet-vim'
Plug 'RRethy/vim-illuminate'
Plug 'windwp/nvim-ts-autotag'
" Plug 'github/copilot.vim'
Plug 'numToStr/Comment.nvim'
Plug 'f-person/git-blame.nvim'
Plug 'HakonHarnes/img-clip.nvim'
Plug 'zbirenbaum/copilot.lua'
Plug 'zbirenbaum/copilot-cmp'

Plug 'yetone/avante.nvim', { 'branch': 'main', 'do': 'make' }

call plug#end()
