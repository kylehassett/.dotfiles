require'config.lazy' -- Set up lazy.nvim, vim options, and point lazy.nvim to plugin config directory

-- Telescope
require'telescope'.load_extension("media_files")

-- Treesitter
vim.treesitter.language.register('python', { 'py' })

-- blink.cmp
-- local capabilities = require('blink.cmp').get_lsp_capabilities()
--
-- local servers = {
--     'angularls',
--     'ansiblels',
--     'astro',
--     'bashls',
--     'clangd',
--     'cmake',
--     'codebook',
--     'cssls',
--     'docker_language_server',
--     'eslint',
--     'gh_actions_ls',
--     'gopls',
--     'harper_ls',
--     'html',
--     'htmx',
--     'jdtls',
--     'jsonls',
--     'kotlin_language_server',
--     'lua_ls',
--     'marksman',
--     'nginx_language_server',
--     -- 'prettier',
--     'postgres_lsp',
--     'prismals',
--     'ruff',
--     'sqlls',
--     'svelte',
--     'tailwindcss',
--     'terraformls',
--     'ts_ls',
--     'yamlls'
-- }
--
-- for _, server in ipairs(servers) do
--   vim.lsp.config[server] = { capabilities = capabilities }
--   vim.lsp.enable(server)
-- end

require'shortcuts' -- Set up my custom shortcuts

-- netrw
vim.g.netrw_localrmdir='rm -rf'

vim.api.nvim_create_autocmd("FileType", {
    pattern = "json",
    callback = function()
        vim.wo.conceallevel = 0
    end,
})

