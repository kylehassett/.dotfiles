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
        { name = 'nvim_lsp' },
        { name = 'vsnip' },
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
        {
            name = 'codecompanion',
            option = {
                filetypes = {
                    'codecompanion'
                }
            }
        }
    }, {
        { name = 'buffer' }
    }),
    view = {
        entries = 'custom'
    }
})

-- cmp-nvim-lsp
require('cmp_nvim_lsp').default_capabilities()

require'shortcuts' -- Set up my custom shortcuts

-- netrw
vim.g.netrw_localrmdir='rm -rf'

