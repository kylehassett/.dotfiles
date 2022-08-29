set nocompatible

call plug#begin('~/.config/nvim/autoload/plugged')

  Plug 'airblade/vim-gitgutter'
  Plug 'airblade/vim-rooter'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'gabrielpoca/replacer.nvim'
  Plug 'itchyny/lightline.vim'
  " Plug 'jiangmiao/auto-pairs'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'dracula/vim', { 'as': 'dracula' }
  Plug 'kevinoid/vim-jsonc'
  Plug 'leafOfTree/vim-matchtag'
  Plug 'lukas-reineke/indent-blankline.nvim'
  Plug 'mfussenegger/nvim-dap'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'Pocco81/AutoSave.nvim'
  Plug 'steelsojka/headwind.nvim'
  Plug 'preservim/nerdcommenter'
  Plug 'preservim/nerdtree'
  Plug 'sheerun/vim-polyglot'
  " Plug 'tpope/vim-sleuth'
  Plug 'vim-scripts/PreserveNoEOL'

call plug#end()
