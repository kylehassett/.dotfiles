-- General
vim.cmd('colorscheme dracula')

vim.bo.autoindent = true
vim.bo.autoread = true
vim.o.background = 'dark'
-- vim.o.clipboard = vim.api.nvim_get_option('clipboard') .. 'unnamed' -- Commenting out, need to stop being afraid of registers.
-- vim.bo.formatoptions:remove({ 'c', 'r', 'o', })
vim.wo.colorcolumn = "79,100"
vim.wo.cursorline = true
vim.o.encoding = 'utf-8'
vim.bo.expandtab = true
vim.bo.fileencoding = 'utf-8'
vim.o.guifont = 'JetBrainsMono Nerd Font:13'
vim.o.hidden = true
vim.o.ignorecase = true
vim.wo.list = true
vim.o.backup = false
vim.o.writebackup = false
vim.wo.wrap = false
vim.wo.number = true
vim.wo.numberwidth = 6
vim.wo.relativenumber = true
vim.o.ruler = true
vim.o.scrolloff = 10
vim.o.sidescrolloff = 30
vim.bo.shiftwidth = 4
vim.o.showmatch = true
vim.o.showtabline = 2
vim.bo.softtabstop = 4
vim.bo.smartindent = true
vim.o.smarttab = true
vim.bo.tabstop = 4
vim.o.termguicolors = true
vim.o.updatetime = 300
vim.o.wildmenu = true
vim.cmd('syntax enable')

-- Personalization
vim.g.mapleader = " "

-- I'm not messing with this for now. I need to learn how to navigate windows properly.
vim.cmd([[
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
    nnoremap <silent> <C-l> :call WinMove('l')<CR>
]])

-- Removing these for now in favor of page scrolling with <C-j> and <C-k>
-- nnoremap <silent> <C-j> :call WinMove('j')<CR>
-- nnoremap <silent> <C-k> :call WinMove('k')<CR>
