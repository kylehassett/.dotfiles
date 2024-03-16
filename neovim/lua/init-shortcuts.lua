-- Overriding defaults
-- Vertical Scrolling
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

-- c
-- <c>ode <a>ction
vim.api.nvim_set_keymap('n', '<leader>ca', ':Lspsaga code_action<CR>', { noremap = true, silent = true, })
vim.api.nvim_set_keymap("v", "<leader>ca", ":Lspsaga range_code_action<CR>", { noremap = true, silent = true, })
-- <c>ode diagnostic
    -- <c>ursor
    vim.api.nvim_set_keymap('n', '<leader>cdc', ':Lspsaga show_cursor_diagnostics<CR>', { noremap = true, silent = true, })
    -- <l>ine
    vim.api.nvim_set_keymap('n', '<leader>cdl', ':Lspsaga show_line_diagnostics<CR>', { noremap = true, silent = true, })
    -- scrolling
    -- up
    vim.api.nvim_set_keymap("n", "<F3>", "lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>", { noremap = true, silent = true, })
    -- down
    vim.api.nvim_set_keymap("n", "<F2>", "lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>", { noremap = true, silent = true, })
-- <c>ode <h>over doc
vim.api.nvim_set_keymap("n", "<leader>ch", ":Lspsaga hover_doc<CR>", { noremap = true, silent = true, })
-- <c>ode <i>mplementation
vim.api.nvim_set_keymap("n", "<leader>ci", ":Telescope lsp_implementations<CR>", { noremap = true, silent = true, })
-- <c>ode <p>review definition
vim.api.nvim_set_keymap("n", "<leader>cp", ":Lspsaga preview_definition<CR>", { noremap = true, silent = true, })
-- <c>ode <r>ename
vim.api.nvim_set_keymap("n", "<leader>cr", ":Lspsaga rename ++project<CR>", { noremap = true, silent = true, })
-- <c>ode <s>ignature help
vim.api.nvim_set_keymap("n", "<leader>cs", ":Lspsaga signature_help<CR>", { noremap = true, silent = true, })
-- <c>ode <t>ype
vim.api.nvim_set_keymap("n", "<leader>ct", ":Telescope lsp_type_definitions<CR>", { noremap = true, silent = true, })
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
    -- open
    vim.api.nvim_set_keymap('n', '<leader>ft', ':Lspsaga open_floaterm<CR>', { noremap = true, silent = true, })

    -- function ClearFloaterm()
    --     vim.api.nvim_command('<>')
    -- end

    -- close
    vim.api.nvim_set_keymap('t', '<D-d>', "<C-\\><C-n>:Lspsaga close_floaterm<CR>", { noremap = true, silent = true, })
-- h
-- left movement for tabs
vim.api.nvim_set_keymap('n', '<leader>ht', ':tabprevious<CR>', { noremap = true, silent = true, })
-- <h>ide <h>ilight
vim.api.nvim_set_keymap('n', '<leader>hh', ':noh<CR>', { noremap = true, silent = true, })
-- l
-- <l>azy<g>it
vim.api.nvim_set_keymap('n', '<leader>lg', ":lua require('lspsaga.floaterm').open_float_terminal()<CR>", { noremap = true, silent = true, })
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

