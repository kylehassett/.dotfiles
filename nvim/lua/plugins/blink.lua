return {
    'saghen/blink.cmp',
    version = '1.*',
    dependencies = {
        'rafamadriz/friendly-snippets',
        {
            'fang2hou/blink-copilot',
            dependencies = {
                {
                    'zbirenbaum/copilot.lua',
                    cmd = "Copilot",
                    event = "InsertEnter",
                    opts = {
                        suggestion = { enabled = false },
                        panel = { enabled = false }
                    }
                }
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
                'copilot',
                'lsp',
                'path',
                'snippets',
                'buffer'
            },
            providers = {
                copilot = {
                    name = 'copilot',
                    module = 'blink-copilot',
                    score_offset = 100,  -- always floats to top
                    async = true,
                    opts = {
                        max_tries = 2,         -- retries if Copilot is slow to respond
                        show_in_menu = true,   -- keep it in the popup too
                    },
                },
            },
        },
        completion = {
            ghost_text = { enabled = true },
        },
    },
}
