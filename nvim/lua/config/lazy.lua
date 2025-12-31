-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- As per lazy.nvim instructions...
-- 1. Map the leader character here so the extensions are configured properly
-- 2. Set other vim options
vim.g.mapleader = " "

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
vim.bo.filetype = "on"
vim.env.FZF_DEFAULT_COMMAND = 'rg --files -g "!.git/" -g "!.github/" -g "!node_modules/" --hidden'
vim.o.guifont = 'JetBrainsMono Nerd Font:13'
vim.o.hidden = true
vim.o.ignorecase = true
vim.wo.list = true
vim.opt.listchars:append "eol:↴"
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
vim.g.vim_matchtag_files = '*.astro,*.html,*.jsx,*.svelte,*.tsx,*.vue,*.xml'
vim.o.wildmenu = true

-- Syntax highlighting and indentation plugins
vim.cmd('syntax enable')
vim.cmd('filetype plugin indent on')

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

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- import your plugins
    { import = "plugins" },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { missing = true, colorscheme = { "dracula" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})

-- dracula colorscheme
vim.cmd[[colorscheme dracula]]

-- Code companion markdown rendering
vim.api.nvim_create_autocmd('FileType', {
    pattern = 'codecompanion',
    command = 'Markview attach',
})
