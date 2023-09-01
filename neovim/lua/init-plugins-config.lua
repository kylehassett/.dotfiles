-- Autosave
require("auto-save").setup({
    events = {"BufLeave", "BufWinLeave", "TabLeave", "WinLeave"},
})


-- Comment.nvim
require('Comment').setup()


-- Copilot
vim.api.nvim_set_keymap('i', '<S-Tab>', 'copilot#Accept("\\<CR>")', {
    expr = true,
    silent = true,
    script = true
})
vim.g.copilot_no_tab_map = true


-- FZF
vim.env.FZF_DEFAULT_COMMAND = 'rg --files -g "!.git/" -g "!.github/" -g "!node_modules/" --hidden'


-- Indent blankline
vim.opt.listchars:append "eol:↴"

vim.cmd [[highlight IndentBlanklineIndent1 guibg=#36384a gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guibg=#404459 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guibg=#4b4f68 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guibg=#565a76 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guibg=#606585 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guibg=#6b7194 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent7 guibg=#7a7f9f gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent8 guibg=#898da9 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent9 guibg=#979bb4 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent10 guibg=#a6aabf gui=nocombine]]

require("indent_blankline").setup {
    char = "",
    char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
        "IndentBlanklineIndent3",
        "IndentBlanklineIndent4",
        "IndentBlanklineIndent5",
        "IndentBlanklineIndent6",
        "IndentBlanklineIndent7",
        "IndentBlanklineIndent8",
        "IndentBlanklineIndent9",
        "IndentBlanklineIndent10",
    },
    space_char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
        "IndentBlanklineIndent3",
        "IndentBlanklineIndent4",
        "IndentBlanklineIndent5",
        "IndentBlanklineIndent6",
        "IndentBlanklineIndent7",
        "IndentBlanklineIndent8",
        "IndentBlanklineIndent9",
        "IndentBlanklineIndent10",
    },
    show_current_context = true,
    show_current_context_start = true,
    show_end_of_line = true,
    show_trailing_blankline_indent = false,
}

-- Lualine
require('lualine').setup { options = { icons_enabled = false } }


-- netrw
vim.g.netrw_localrmdir='rm -rf'


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
            filetypes = {"png", "jpg", "jpeg", "webm", "pdf"},
            find_cmd = "rg"
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
    'tsserver',
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
lsp_config.astro.setup { capabilities = capabilites }
lsp_config.angularls.setup { capabilities = capabilites }
lsp_config.clangd.setup { capabilities = capabilites }
lsp_config.ccls.setup { capabilities = capabilites }
lsp_config.cssls.setup { capabilities = capabilites }
lsp_config.dockerls.setup { capabilities = capabilites }
lsp_config.emmet_ls.setup({
    capabilities = capabilites,
    filetypes = { "astro", "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", 'svelte',  }
})
lsp_config.eslint.setup { capabilities = capabilites }
lsp_config.html.setup { capabilities = capabilites }
lsp_config.jdtls.setup { capabilities = capabilites }
lsp_config.jsonls.setup { capabilities = capabilites }
lsp_config.lua_ls.setup { capabilities = capabilites }
lsp_config.marksman.setup { capabilities = capabilites }
lsp_config.prismals.setup { capabilities = capabilites }
lsp_config.pyright.setup { capabilities = capabilites }
lsp_config.sqlls.setup { capabilities = capabilites }
lsp_config.svelte.setup { capabilities = capabilites }
lsp_config.tailwindcss.setup { capabilities = capabilites }
lsp_config.tsserver.setup { capabilities = capabilites }
lsp_config.terraformls.setup { capabilities = capabilites }
lsp_config.yamlls.setup { capabilities = capabilites }

-- lspsaga
require('lspsaga').setup()

-- Treesitter
require('nvim-treesitter.configs').setup {
    auto_install = true,
    autotag = {
        enable = true,
    },
    ensure_installed = {
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

