-- Autosave
require("autosave").setup(
    {
        enabled = true,
        execution_message = "AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"),
        events = {"BufLeave", "BufWinLeave", "TabLeave", "WinLeave"},
        conditions = {
            exists = true,
            filename_is_not = {},
            filetype_is_not = {},
            modifiable = true
        },
        write_all_buffers = false,
        on_off_commands = true,
        clean_command_line_interval = 0,
        debounce_delay = 135
    }
)


-- FZF
vim.env.FZF_DEFAULT_COMMAND = 'rg --files --hidden -g "!.git/" -g "!.github/" -g "!node_modules/"'


-- Indent blankline
vim.opt.listchars:append "eol:↴"

vim.cmd [[highlight IndentBlanklineIndent1 guibg=#184e77 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guibg=#1e6091 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guibg=#1a759f gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guibg=#168aad gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guibg=#34a0a4 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guibg=#52b69a gui=nocombine]]

require("indent_blankline").setup {
    char = "",
    char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
        "IndentBlanklineIndent3",
        "IndentBlanklineIndent4",
        "IndentBlanklineIndent5",
        "IndentBlanklineIndent6",
    },
    space_char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
        "IndentBlanklineIndent3",
        "IndentBlanklineIndent4",
        "IndentBlanklineIndent5",
        "IndentBlanklineIndent6",
    },
    show_end_of_line = true,
    show_trailing_blankline_indent = false,
}


-- LSP related configs
require("mason").setup()
require("mason-lspconfig").setup({ ensure_installed = {
    'angularls',
    'clangd',
    'cssls',
    'dockerls',
    'eslint',
    'emmet_ls',
    'html',
    'jsonls',
    'jdtls',
    'sumneko_lua',
    'marksman',
    'prismals',
    'pyright',
    'sqlls',
    'svelte',
    'tailwindcss',
    'tsserver',
    'yamlls',
} })
require('lspconfig').angularls.setup{}
require('lspconfig').clangd.setup{}
require('lspconfig').ccls.setup{}
require('lspconfig').cssls.setup{}
require('lspconfig').dockerls.setup{}
require('lspconfig').emmet_ls.setup{
    filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", 'svelte',  }
}
require('lspconfig').eslint.setup{}
require('lspconfig').html.setup{}
require('lspconfig').jsonls.setup{}
require('lspconfig').marksman.setup{}
require('lspconfig').prismals.setup{}
require('lspconfig').pyright.setup{}
require('lspconfig').sqlls.setup{}
require('lspconfig').svelte.setup{}
require('lspconfig').tailwindcss.setup{}
require('lspconfig').tsserver.setup{}


-- lspsaga
require('lspsaga').init_lsp_saga()


-- Lualine
require('lualine').setup { options = { icons_enabled = false } }


-- Treesitter
require('nvim-treesitter.configs').setup {
    auto_install = true,
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

-- vim-indent
vim.g.indent_guides_enable_on_vim_startup = 1

