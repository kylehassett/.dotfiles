-- Autosave
require("auto-save").setup({
    events = {"InsertLeave", "TextChanged"},
    debounce_delay = 500,
})


-- Avante
require('avante').setup({
    provider = "openai"
})


-- Comment.nvim
require('Comment').setup()


-- Copilot
require('copilot').setup({
    suggestion = {
        auto_trigger = true,
        keymap = {
            accept = "<S-Tab>"
        }
    }
})
-- vim.api.nvim_set_keymap('i', '<S-Tab>', 'lua require("copilot.suggestion").accept()', {
--     expr = true,
--     silent = true,
--     script = true
-- })
-- vim.g.copilot_no_tab_map = true

--
-- FZF
vim.env.FZF_DEFAULT_COMMAND = 'rg --files -g "!.git/" -g "!.github/" -g "!node_modules/" --hidden'


-- Git Blame
require('gitblame').setup {
    enabled = false,  -- Start with git blame disabled so it's not distracting
}


-- Indent blankline
vim.opt.listchars:append "eol:↴"

require("ibl").setup {
    whitespace = {
        highlight = { "CursorColumn", "Whitespace", }
    },
}

-- Lualine
require('lualine').setup { options = { icons_enabled = false } }


-- matchtags
vim.g.vim_matchtag_files = '*.astro,*.html,*.jsx,*.svelte,*.tsx,*.vue,*.xml'


-- nvim-web-devicons
require('nvim-web-devicons').setup()


-- netrw
vim.g.netrw_localrmdir='rm -rf'


-- render-markdown
require('render-markdown').setup({
    enabled = true,
    file_types = { 'markdown', 'Avante' }
})


-- vim-indent
vim.g.indent_guides_enable_on_vim_startup = 1


-- telescope
local telescope = require"telescope"

local grep_ignore_globs = {
    "--glob",
    "!**/.git/*",
    "--glob",
    "!**/.aws-sam/*",
    "--glob",
    "!**/.circleci/*",
    "--glob",
    "!**/dist/*",
    "--glob",
    "!**/node_modules/*",
    "--glob",
    "!**/venv/*",
    "--glob",
    "!**/.next/*",
    "--glob",
    "!**/build/*",
    "--glob",
    "!**/__pycache__/*",
    "--glob",
    "!**/.pytest_cache/*",
    "--glob",
    "!**/.eslintcache",
    "--glob",
    "!**/.DS_Store",
    "--glob",
    "!**/python/*",
    "--glob",
    "!**/playwright-report/*",
}

telescope.load_extension("media_files")
telescope.setup {
    defaults = {
        layout_strategy = "vertical",
        layout_config = {
            vertical = {
                height = 0.95,
                mirror = true,
                preview_height = 0.5,
                prompt_position = "bottom",
                width = 0.95,
            },
        },
        vimgrep_arguments = {
            "rg",
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
            "--smart-case",
            "--hidden",
            "--no-ignore",
            "--sort",
            "path",
            unpack(grep_ignore_globs)
        },
    },
    extensions = {
        media_files = {
            filetypes = {"jpg", "jpeg", "pdf", "png", "tif", "tiff", "webp"},
            find_command = { "rg", "--files", "--hidden", "--no-ignore", "--sort", "path", unpack(grep_ignore_globs) },
        }
    },
    pickers = {
        find_files = {
            find_command = { "rg", "--files", "--hidden", "--no-ignore", "--sort", "path", unpack(grep_ignore_globs) },
        }
    }
}


-- LSP related configs
require("mason").setup()
require("mason-lspconfig").setup({ ensure_installed = {
    'angularls',
    'astro',
    'bashls',
    'clangd',
    'cssls',
    'dockerls',
    'eslint',
    'emmet_ls',
    'html',
    'jsonls',
    'jdtls',
    'lua_ls',
    'marksman',
    'prismals',
    'pyright',
    'sqlls',
    'svelte',
    'tailwindcss',
    'terraformls',
    'ts_ls',
    'yamlls',
} })

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
    sources = cmp.config.sources(
        {
            { name = 'nvim_lsp' },
            { name = 'vsnip' },
            {
                name = 'emmet_vim',
                option = {
                    filetypes = { 'astro', 'html', 'xml', 'typescriptreact', 'javascriptreact', 'css', 'sass', 'scss', 'less', 'heex', 'tsx', 'jsx' }
                }
            },
        },
        {
            { name = 'buffer' }
        }
    ),
    view = {
        entries = 'custom'
    }
})


local capabilities = require('cmp_nvim_lsp').default_capabilities()

local lsp_config = require'lspconfig'
lsp_config.astro.setup { capabilities = capabilities }
lsp_config.angularls.setup { capabilities = capabilities }
lsp_config.bashls.setup { capabilities = capabilities }
lsp_config.clangd.setup { capabilities = capabilities }
lsp_config.ccls.setup { capabilities = capabilities }
lsp_config.cssls.setup { capabilities = capabilities }
lsp_config.dockerls.setup { capabilities = capabilities }
lsp_config.emmet_ls.setup({
    capabilities = capabilities,
    filetypes = { "astro", "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", 'svelte',  }
})
lsp_config.eslint.setup { capabilities = capabilities }
lsp_config.html.setup { capabilities = capabilities }
lsp_config.jdtls.setup { capabilities = capabilities }
lsp_config.jsonls.setup { capabilities = capabilities }
lsp_config.lua_ls.setup { capabilities = capabilities }
lsp_config.marksman.setup { capabilities = capabilities }
lsp_config.prismals.setup { capabilities = capabilities }
lsp_config.pyright.setup { capabilities = capabilities }
lsp_config.sqlls.setup { capabilities = capabilities }
lsp_config.svelte.setup { capabilities = capabilities }
lsp_config.tailwindcss.setup { capabilities = capabilities }
lsp_config.ts_ls.setup { capabilities = capabilities }
lsp_config.terraformls.setup { capabilities = capabilities }
lsp_config.yamlls.setup { capabilities = capabilities }


-- lspsaga
require('lspsaga').setup({
    code_action_keys = {
        quit = "<ESC>",
    },
    finder_action_keys = {
        quit = "<ESC>",
    },
    rename_action_keys = {
        quit = "<ESC>",
    },
})


-- Treesitter
require('nvim-treesitter.configs').setup {
    auto_install = true,
    autotag = {
        enable = true,
    },
    ensure_installed = {
        'bash',
        'c',
        'css',
        'lua',
        'dockerfile',
        'gitignore',
        'hjson',
        'html',
        'java',
        'javascript',
        'json',
        'jsonc',
        'latex',
        'markdown',
        'prisma',
        'python',
        'rust',
        'scss',
        'sql',
        'svelte',
        'swift',
        'tsx',
        'typescript',
        'yaml',
    },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    indent = { enabled = true, }
}

