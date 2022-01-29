source $HOME/.config/nvim/plugins.vim


" Neovim
" ++ General
colorscheme dracula 
set autoindent
set clipboard+=unnamed
set formatoptions-=cro
set cursorline
set encoding=utf-8
set expandtab
set fileencoding=utf-8
set guifont=JetBrains\ Mono:13
set nobackup
set nowritebackup
set nowrap
set number
set ruler
set shiftwidth=4
set showmatch
set showtabline=2
set softtabstop=4
set smartindent
set smarttab
set tabstop=4
set termguicolors
set updatetime=300
syntax enable
" --
" ++ Personalization
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
let mapleader = " "
" --


" CoC
" ++ Tab completion
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
" ++ Make <CR> auto-select the first completion item and notify coc.nvim to format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                             \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" --
" ++ Personalization
autocmd CursorHold * silent call CocActionAsync('highlight')
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>ac  <Plug>(coc-codeaction)
nmap <leader>qf  <Plug>(coc-fix-current)
nmap <leader>cl  <Plug>(coc-codelens-action)
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)
" --


" NERDTree
" ++ General
let NERDTreeShowHidden=1
" --
