vim.cmd('source $HOME/.config/nvim/plugins.vim')

require'init-options'
require'init-plugins-config'

vim.cmd([[
" +++ Keyboard shortcut system
" <leader><v>erb<n>oun EX: new tab -> <leader>nt
" Thinking in VIM, but for extensions, tabs, windows, etc.
" Use capital letters for verb if there are multiple semantically useful words
" for the short cuts.
"
" f - find
nnoremap <leader>fc :Ag<CR>
nnoremap <leader>ff :FZF<CR>
nnoremap <leader>fg :GFiles<CR>
" f - format
" h
"" h - left movement
nnoremap <leader>ht :tabprevious<CR>
"" hide
nmap <leader>hh :noh<CR>
" l
nnoremap <leader>lt :tabnext<CR>
" o - only
nnoremap <leader>ot :tabonly<CR>
nnoremap <leader>ow <C-w>o
" n - new
nnoremap <leader>nt :$tabnew %<CR>
" r - reload
nnoremap <leader>rt :edit<CR>
" q - quit
nnoremap <leader>qn :NERDTreeClose<CR>
nnoremap <leader>qt :tabclose<CR>
nnoremap <leader>qw <C-w>q " quit tab
" ---
]])

