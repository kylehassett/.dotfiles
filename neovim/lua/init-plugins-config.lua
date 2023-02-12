-- Autosave
require("auto-save").setup({
    events = {"BufLeave", "BufWinLeave", "TabLeave", "WinLeave"},
})


-- FZF
vim.env.FZF_DEFAULT_COMMAND = 'rg --files -g "!.git/" -g "!.github/" -g "!node_modules/" --hidden'


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

-- Lualine
require('lualine').setup { options = { icons_enabled = false } }

-- vim-indent
vim.g.indent_guides_enable_on_vim_startup = 1


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

local lsp_config = require'lspconfig'

vim.cmd("let g:coq_settings = { 'auto_start': 'shut-up' }")
local coq = require'coq'

lsp_config.angularls.setup(coq.lsp_ensure_capabilities{})
lsp_config.clangd.setup(coq.lsp_ensure_capabilities{})
lsp_config.ccls.setup(coq.lsp_ensure_capabilities{})
lsp_config.cssls.setup(coq.lsp_ensure_capabilities{})
lsp_config.dockerls.setup(coq.lsp_ensure_capabilities{})
lsp_config.emmet_ls.setup(coq.lsp_ensure_capabilities{
    filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", 'svelte',  }
})
lsp_config.eslint.setup(coq.lsp_ensure_capabilities{})
lsp_config.html.setup(coq.lsp_ensure_capabilities{})
lsp_config.jsonls.setup(coq.lsp_ensure_capabilities{})
lsp_config.marksman.setup(coq.lsp_ensure_capabilities{})
lsp_config.prismals.setup(coq.lsp_ensure_capabilities{})
lsp_config.pyright.setup(coq.lsp_ensure_capabilities{})
lsp_config.sqlls.setup(coq.lsp_ensure_capabilities{})
lsp_config.svelte.setup(coq.lsp_ensure_capabilities{})
lsp_config.tailwindcss.setup(coq.lsp_ensure_capabilities{})
lsp_config.tsserver.setup(coq.lsp_ensure_capabilities{})


-- lspsaga
require('lspsaga').setup()

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

vim.cmd('COQnow')

