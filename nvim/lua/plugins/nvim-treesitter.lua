return {
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        lazy = false,
        opts = {
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
                'go',
                'hjson',
                'html',
                'java',
                'javascript',
                'json',
                'jsonc',
                'latex',
                'markdown',
                'markdown_inline',
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
            indent = { enabled = true, },
        }
    }
}
