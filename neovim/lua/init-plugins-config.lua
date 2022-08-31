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
vim.env.FZF_DEFAULT_COMMAND = 'rg --files --hidden -g "!.git/" -g "!.github/"'


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


-- LSP config
local lspConfig = require('lspconfig')

lspConfig.ccls.setup{}


-- Lualine
require('lualine').setup { options = { icons_enabled = false } }


-- Treesitter
require('nvim-treesitter.configs').setup {
    auto_install = true,
    ensure_installed = {
        'c',
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
        enabled = true,
        additional_vim_regex_highlighting = false,
    },
}

-- vim-indent
vim.g.indent_guides_enable_on_vim_startup = 1

