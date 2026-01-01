require'config.lazy' -- Set up lazy.nvim, vim options, and point lazy.nvim to plugin config directory

-- Telescope
require'telescope'.load_extension("media_files")

-- nvim-cmp
vim.cmd('set completeopt=menu,menuone,noselect')

local cmp = require'cmp'

cmp.setup({
    mapping = cmp.mapping.preset.insert({
        ['<Tab>'] = cmp.mapping.confirm({ select = true }),
        ['<Enter>'] = cmp.mapping.confirm({ select = true })
    }),
    snippet = {
        expand = function(args)
            vim.fn['vsnip#anonymous'](args.body)
        end
    },
    sources = cmp.config.sources({
        { name = 'buffer' },
        {
            name = 'emmet_vim',
            option = {
                filetypes = {
                    'astro',
                    'css',
                    'html',
                    'heex',
                    'less',
                    'jsx',
                    'javascriptreact',
                    'scss',
                    'sass',
                    'tsx',
                    'typescriptreact',
                    'xml'
                }
            }
        },
        { name = 'nvim_lsp' },
        { name = 'nvim_lsp_signature_help' },
        { name = 'path' },
        { name = 'vsnip' },
        {
            name = 'codecompanion',
            option = {
                filetypes = {
                    'codecompanion'
                }
            }
        },
    }),
    view = {
        entries = 'custom'
    }
})

-- cmp-nvim-lsp
local capabilities = require('cmp_nvim_lsp').default_capabilities()

vim.lsp.config['angularls'] = { setup = { capabilities = capabilities } }
vim.lsp.config['ansiblels'] = { setup = { capabilities = capabilities } }
vim.lsp.config['astro'] = { setup = { capabilities = capabilities } }
vim.lsp.config['bashls'] = { setup = { capabilities = capabilities } }
vim.lsp.config['clangd'] = { setup = { capabilities = capabilities } }
vim.lsp.config['cmake'] = { setup = { capabilities = capabilities } }
vim.lsp.config['codebook'] = { setup = { capabilities = capabilities } }
vim.lsp.config['copilot'] = { setup = { capabilities = capabilities } }
vim.lsp.config['cssls'] = { setup = { capabilities = capabilities } }
vim.lsp.config['docker_language_server'] = { setup = { capabilities = capabilities } }
vim.lsp.config['emmet_language_server'] = { setup = {
    capabilities = capabilities,
    filetypes = { "astro", "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", 'svelte',  }
} }
vim.lsp.config['eslint'] = { setup = { capabilities = capabilities } }
vim.lsp.config['gh_actions_ls'] = { setup = { capabilities = capabilities } }
vim.lsp.config['gopls'] = { setup = { capabilities = capabilities } }
vim.lsp.config['harper_ls'] = { setup = { capabilities = capabilities } }
vim.lsp.config['html'] = { setup = { capabilities = capabilities } }
vim.lsp.config['htmx'] = { setup = { capabilities = capabilities } }
vim.lsp.config['jdtls'] = { setup = { capabilities = capabilities } }
vim.lsp.config['jsonls'] = { setup = { capabilities = capabilities } }
vim.lsp.config['kotlin_language_server'] = { setup = { capabilities = capabilities } }
vim.lsp.config['lua_ls'] = { setup = { capabilities = capabilities } }
vim.lsp.config['marksman'] = { setup = { capabilities = capabilities } }
vim.lsp.config['nginx_language_server'] = { setup = { capabilities = capabilities } }
vim.lsp.config['prettier'] = { setup = { capabilities = capabilities } }
vim.lsp.config['postgres_lsp'] = { setup = { capabilities = capabilities } }
vim.lsp.config['prismals'] = { setup = { capabilities = capabilities } }
vim.lsp.config['pyright'] = { setup = { capabilities = capabilities } }
vim.lsp.config['pylsp'] = { setup = { capabilities = capabilities } }
vim.lsp.config['sqlls'] = { setup = { capabilities = capabilities } }
vim.lsp.config['svelte'] = { setup = { capabilities = capabilities } }
vim.lsp.config['tailwindcss'] = { setup = { capabilities = capabilities } }
vim.lsp.config['terraformls'] = { setup = { capabilities = capabilities } }
vim.lsp.config['ts_ls'] = { setup = { capabilities = capabilities } }
vim.lsp.config['yamlls'] = { setup = { capabilities = capabilities } }


require'shortcuts' -- Set up my custom shortcuts


-- netrw
vim.g.netrw_localrmdir='rm -rf'

