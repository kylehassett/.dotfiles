require'config.lazy' -- Set up lazy.nvim, vim options, and point lazy.nvim to plugin config directory

-- Telescope
require'telescope'.load_extension("media_files")

-- Treesitter
vim.treesitter.language.register('python', { 'py' })

require'shortcuts' -- Set up my custom shortcuts

-- netrw
vim.g.netrw_localrmdir='rm -rf'

vim.api.nvim_create_autocmd("FileType", {
    pattern = "json",
    callback = function()
        vim.wo.conceallevel = 0
    end,
})

