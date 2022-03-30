source $HOME/.config/nvim/plugins.vim


" Neovim
" ++ General
colorscheme dracula 
set autoindent
set autoread
set background=dark
set clipboard+=unnamed
set formatoptions-=cro
set colorcolumn=80
set cursorline
set encoding=utf-8
set expandtab
set fileencoding=utf-8
set guifont=JetBrains\ Mono:13
set hidden
set ignorecase
set nobackup
set nowritebackup
set nowrap
set number
set ruler
set scrolloff=10
set shiftwidth=4
set showmatch
set showtabline=2
set softtabstop=4
set smartindent
set smarttab
set tabstop=4
set termguicolors
set updatetime=300
set wildmenu
syntax enable
" --
" ++ Personalization
let mapleader = " "
nmap <leader>/ :noh<CR>
nnoremap <leader>fg :GFiles<CR>
" --
" ++ Buffer management
nnoremap <leader>r :edit<CR>
" --
" ++ Tab management
nnoremap <leader>tc :tabclose<CR>
nnoremap <leader>te :$tabnew %<CR>
nnoremap <leader>tn :tabnext<CR>
nnoremap <leader>to :tabonly<CR>
nnoremap <leader>tp :tabprevious<CR>
" --
" ++ Window management
nnoremap <leader>wo <C-w>o
nnoremap <leader>wq <C-w>q
" --
" ++ Window navigation
function! WinMove(key)
    let t:curwin = winnr()
    exec "wincmd ".a:key
    if (t:curwin == winnr())
        if (match(a:key,'[jk]'))
            wincmd v
        else
            wincmd s
        endif
        exec "wincmd ".a:key
    endif
endfunction

nnoremap <silent> <C-h> :call WinMove('h')<CR>
nnoremap <silent> <C-j> :call WinMove('j')<CR>
nnoremap <silent> <C-k> :call WinMove('k')<CR>
nnoremap <silent> <C-l> :call WinMove('l')<CR>
" --


" ++ AutoSave
lua << EOF
local autosave = require("autosave")

autosave.setup(
    {
        enabled = true,
        execution_message = "AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"),
        events = {"BufLeave", "BufWinLeave", "TabLeave", "WinLeave"},
        conditions = {
            exists = true,
            filename_is_not = {},
            filetype_is_not = {},
            modifiable = true
        },
        write_all_buffers = false,
        on_off_commands = true,
        clean_command_line_interval = 0,
        debounce_delay = 135
    }
)
EOF
" --


" CoC
" ++ Highlight current symbol on hover
autocmd CursorHold * silent call CocActionAsync('highlight')
" --
" ++ Make <CR> auto-select the first completion item and notify coc.nvim to format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                             \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" --
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


" FuzzyFinder
" ++ Personalization
nnoremap <leader>fc :Ag<Space>
nnoremap <leader>ff :FZF<CR>
" --


" NERDTree
" ++ General
let NERDTreeShowHidden=1
" --
" ++ Personalization
nnoremap <leader>no :NERDTree<CR>
nnoremap <leader>nc :NERDTreeClose<CR>
" --
" ++ Start NERDTree when Vim starts with a directory argument.
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
"      \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif
" --
" ++ Start NERDTree when Vim is started without file arguments.
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
" --
" ++ If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
" autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
"    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
" --
" ++ Open the existing NERDTree on each new tab.
" autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
" --

" vim-indent
" ++ General
let g:indent_guides_enable_on_vim_startup = 1
" --

