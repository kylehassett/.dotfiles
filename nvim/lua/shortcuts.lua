-- Overriding defaults
-- Vertical Scrolling
vim.keymap.set({ "n", "v" }, "<C-k>", "<C-u>zz<CR>", { noremap = true, silent = true, })
vim.keymap.set({ "n", "v" }, "<C-j>", "<C-d>zz<CR>", { noremap = true, silent = true, })

--[[
    Keyboard shortcut system
    <leader><v>erb<n>oun EX: new tab -> <leader>nt
    Thinking in VIM, but for extensions, tabs, windows, etc.
    Use capital letters for verb if there are multiple semantically useful words for the short cuts.
    This is roughly the idea. I don't always stick to it.
--]]

-- a
-- <a>i <a>ccess
vim.keymap.set({ 'n', 'v' }, '<leader>aa', ':CodeCompanionChat<CR>', { noremap = true, silent = true, })
-- <a>i <i>nline
vim.keymap.set({ 'n', 'v' }, '<leader>ai', ':CodeCompanion<CR>', { noremap = true, silent = true, })
-- <a>i <p>allete
vim.keymap.set({ 'n', 'v' }, '<leader>ap', ':CodeCompanionActions<CR>', { noremap = true, silent = true, })

-- c
-- <c>ode <a>ction
vim.keymap.set({ 'n', "v" }, '<leader>ca', ':Lspsaga code_action<CR>', { noremap = true, silent = true, })
-- <c>ode diagnostic
    -- <c>ursor
    vim.keymap.set('n', '<leader>cdc', ':Lspsaga show_cursor_diagnostics<CR>', { noremap = true, silent = true, })
    -- <l>ine
    vim.keymap.set('n', '<leader>cdl', ':Lspsaga show_line_diagnostics<CR>', { noremap = true, silent = true, })
    -- scrolling
    -- up
    vim.keymap.set("n", "<F3>", "lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>", { noremap = true, silent = true, })
    -- down
    vim.keymap.set("n", "<F2>", "lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>", { noremap = true, silent = true, })
-- <c>ode <g>generate
vim.keymap.set("n", "<leader>cg", "lua require('copilot.suggestion').next()<CR>", { noremap = true, silent = true, })
-- <c>ode <h>over doc
vim.keymap.set("n", "<leader>ch", ":Lspsaga hover_doc<CR>", { noremap = true, silent = true, })
-- <c>ode <i>mplementation
vim.keymap.set("n", "<leader>ci", ":Telescope lsp_implementations<CR>", { noremap = true, silent = true, })
-- <c>ode <p>review definition
-- vim.keymap.set("n", "<leader>cp", ":Lspsaga preview_definition<CR>", { noremap = true, silent = true, })
vim.keymap.set("n", "<leader>cp", ":Copilot panel<CR>", { noremap = true, silent = true, })
-- <c>ode <r>ename
vim.keymap.set("n", "<leader>cr", ":Lspsaga rename ++project<CR>", { noremap = true, silent = true, })
-- <c>ode <s>ignature help
vim.keymap.set("n", "<leader>cs", ":Lspsaga signature_help<CR>", { noremap = true, silent = true, })
-- <c>ode <t>ype
vim.keymap.set("n", "<leader>ct", ":Telescope lsp_type_definitions<CR>", { noremap = true, silent = true, })
-- <c>ode <u>sage
vim.keymap.set('n', '<leader>cu', ':Telescope lsp_references<CR>', { noremap = true, silent = true, })
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
    vim.keymap.set('n', '<leader>ft', ':Lspsaga open_floaterm<CR>', { noremap = true, silent = true, })

    -- function ClearFloaterm()
    --     vim.api.nvim_command('<>')
    -- end

    -- close
    vim.keymap.set('t', '<D-d>', "<C-\\><C-n>:Lspsaga close_floaterm<CR>", { noremap = true, silent = true, })
-- g
vim.keymap.set('n', '<leader>gb', ':GitBlameToggle<CR>', { noremap = true, silent = true, })
-- h
-- left movement for tabs
vim.keymap.set('n', '<leader>ht', ':tabprevious<CR>', { noremap = true, silent = true, })
-- <h>ide <h>ilight
vim.keymap.set('n', '<leader>hh', ':noh<CR>', { noremap = true, silent = true, })
-- l
-- <l>azy<g>it
vim.keymap.set('n', '<leader>lg', ":lua require('lspsaga.floaterm').open_float_terminal()<CR>", { noremap = true, silent = true, })
-- right movement for tabs
vim.keymap.set('n', '<leader>lt', ':tabnext<CR>', { noremap = true, silent = true, })
-- o
-- <o>nly <t>ab
vim.keymap.set('n', '<leader>ot', ':tabonly<CR>', { noremap = true, silent = true, })
-- <o>nly <w>indow
vim.keymap.set('n', '<leader>ow', '<C-w>o', { noremap = true, silent = true, })
-- n
-- <n>ew <t>ab
vim.keymap.set('n', '<leader>nt', ':$tabnew %', { noremap = true, silent = true, })
-- r
-- <r>eload <t>ab
vim.keymap.set('n', '<leader>rt', ':edit<CR>', { noremap = true, silent = true, })
-- q
-- <q>uit <t>ab
vim.keymap.set('n', '<leader>qt', ':tabclose<CR>', { noremap = true, silent = true, })
-- <q>uit <w>indow
vim.keymap.set('n', '<leader>qw', ':<C-w>q ', { noremap = true, silent = true, })

