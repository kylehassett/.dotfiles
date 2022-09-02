--[[
    Keyboard shortcut system
    <leader><v>erb<n>oun EX: new tab -> <leader>nt
    Thinking in VIM, but for extensions, tabs, windows, etc.
    Use capital letters for verb if there are multiple semantically useful words
    for the short cuts.
--]]

-- [
-- Jump <[> to <e>rror
vim.api.nvim_set_keymap("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { noremap = true, silent = true, })
-- ]
-- Jump <]> from <e>rror
vim.api.nvim_set_keymap("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>", { noremap = true, silent = true, })
-- c
-- <c>ode <a>ction
vim.api.nvim_set_keymap('n', '<leader>ca', ':Lspsaga code_action<CR>', { noremap = true, silent = true, })
vim.api.nvim_set_keymap("v", "<leader>ca", ":Lspsaga range_code_action<CR>", { noremap = true, silent = true, })
-- <c>ode <d>efinition
vim.api.nvim_set_keymap("n", "<leader>cd", ":Lspsaga preview_definition<CR>", { silent = true, })
-- <c>ode <f>inder
vim.api.nvim_set_keymap('n', '<leader>cf', ':Lspsaga lsp_finder<CR>', { noremap = true, silent = true, })
-- <c>ode <r>ename
vim.api.nvim_set_keymap("n", "<leader>cr", ":Lspsaga rename<CR>", { noremap = true, silent = true, })
-- f
-- <f>ind <c>ode
vim.api.nvim_set_keymap('n', '<leader>sp', ':Rg<CR>', { noremap = true, silent = true, })
-- <f>ind <f>ile
vim.api.nvim_set_keymap('n', '<leader>ff', ':FZF<CR>', { noremap = true, silent = true, })
-- <f>lao<t>erm
vim.api.nvim_set_keymap('n', '<leader>ft', ':FloatermNew<CR>', { noremap = true, silent = true, })
-- h
-- left movement for tabs
vim.api.nvim_set_keymap('n', '<leader>ht', ':tabprevious<CR>', { noremap = true, silent = true, })
-- <h>ide <h>ilight
vim.api.nvim_set_keymap('n', '<leader>hh', ':noh<CR>', { noremap = true, silent = true, })
-- l
-- <l>azy<g>it
vim.api.nvim_set_keymap('n', '<leader>lg', ':FloatermNew lazygit<CR>', { noremap = true, silent = true, })
-- right movement for tabs
vim.api.nvim_set_keymap('n', '<leader>lt', ':tabnext<CR>', { noremap = true, silent = true, })
-- o
-- <o>nly <t>ab
vim.api.nvim_set_keymap('n', '<leader>ot', ':tabonly<CR>', { noremap = true, silent = true, })
-- <o>nly <w>indow
vim.api.nvim_set_keymap('n', '<leader>ow', '<C-w>o', { noremap = true, silent = true, })
-- n
-- <n>ew <t>ab
vim.api.nvim_set_keymap('n', '<leader>nt', ':$tabnew %', { noremap = true, silent = true, })
-- r
-- <r>eload <t>ab
vim.api.nvim_set_keymap('n', '<leader>rt', ':edit<CR>', { noremap = true, silent = true, })
-- q
-- <q>uit <t>ab
vim.api.nvim_set_keymap('n', '<leader>qt', ':tabclose<CR>', { noremap = true, silent = true, })
-- <q>uit <w>indow
vim.api.nvim_set_keymap('n', '<leader>qw', ':<C-w>q ', { noremap = true, silent = true, })

