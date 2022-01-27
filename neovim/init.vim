source $HOME/.config/nvim/plugins.vim


" Neovim
colorscheme Dracula 
set autoindent
set clipboard+=unnamed
set formatoptions-=cro
set cursorline
set encoding=utf-8
set expandtab
set fileencoding=utf-8
set guifont=Fira\ Code
set nobackup
set nowritebackup
set nowrap
set number
set shiftwidth=4
set showmatch
set showtabline=2
set softtabstop=4
set smartindent
set smarttab
set tabstop=4
set updatetime=300
syntax enable


" Neovide
let g:neovide_remember_window_size = v:true


" CoC
" ++ Set tab for CoC completion 
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" --
