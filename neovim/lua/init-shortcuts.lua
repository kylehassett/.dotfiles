-- Overriding defaults
vim.api.nvim_set_keymap("n", "<C-k>", "<C-u>zz<CR>", { noremap = true, silent = true, })
vim.api.nvim_set_keymap("n", "<C-j>", "<C-d>zz<CR>", { noremap = true, silent = true, })
vim.api.nvim_set_keymap("v", "<C-k>", "<C-u>zz<CR>", { noremap = true, silent = true, })
vim.api.nvim_set_keymap("v", "<C-j>", "<C-d>zz<CR>", { noremap = true, silent = true, })

--[[
    Keyboard shortcut system
    <leader><v>erb<n>oun EX: new tab -> <leader>nt
    Thinking in VIM, but for extensions, tabs, windows, etc.
    Use capital letters for verb if there are multiple semantically useful words for the short cuts.
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
-- <c>ode <d>oc
vim.api.nvim_set_keymap("n", "<leader>cd", ":Lspsaga hover_doc<CR>", { silent = true, })
-- <c>ode <p>review
vim.api.nvim_set_keymap("n", "<leader>cp", ":Lspsaga preview_definition<CR>", { silent = true, })
-- <c>ode <r>ename
vim.api.nvim_set_keymap("n", "<leader>cr", ":Lspsaga rename<CR>", { noremap = true, silent = true, })
-- <c>ode <u>sage
vim.api.nvim_set_keymap('n', '<leader>cu', ':Telescope lsp_references<CR>', { noremap = true, silent = true, })
-- f
local builtin = require'telescope.builtin'
-- <f>ind in <b>uffer
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
-- <f>ind <c>ode
vim.keymap.set('n', '<leader>fc', builtin.live_grep, {})
-- <f>ind <f>ile
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
-- <f>ind in <h>elp
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
-- <f>ind <m>edia
vim.keymap.set('n', '<leader>fm', ":Telescope media_files<CR>", {})
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

