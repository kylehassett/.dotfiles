return {
    'saghen/blink.cmp',
    version = '1.*',
    dependencies = {
        'rafamadriz/friendly-snippets',
        {
            'zbirenbaum/copilot.lua',
            cmd = "Copilot",
            event = "InsertEnter",
            opts = {
                suggestion = {
                    enabled = true,
                    auto_trigger = true,
                    keymap = { accept = "<S-Tab>" },
                },
                panel = { enabled = false }
            }
        }
    },
    opts = {
        keymap = {
            preset = 'none',
            ['<Tab>'] = { 'accept', 'snippet_forward', 'fallback' },
            ['<S-Tab>'] = { 'snippet_backward', 'fallback' },
            ['<CR>'] = { 'select_and_accept', 'fallback' },
            ['<C-k>'] = { 'select_prev', 'fallback' },
            ['<C-j>'] = { 'select_next', 'fallback' },
            ['<Up>'] = { 'select_prev', 'fallback' },
            ['<Down>'] = { 'select_next', 'fallback' },
            ['<C-e>'] = { 'cancel', 'fallback' },
            ['<C-Space>'] = { 'show', 'fallback' },
        },
        sources = {
            default = {
                'lsp',
                'path',
                'snippets',
                'buffer'
            },
        },
        completion = {
            ghost_text = { enabled = false },
        },
    },
}
