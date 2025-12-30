return {
    {
        'nvimdev/lspsaga.nvim',
        config = function()
            require('lspsaga').setup({})
        end,
        dependencies = {
            'nvim-treesitter/nvim-treesitter',
            'nvim-tree/nvim-web-devicons',
        },
        opts = {
            code_action_keys = {
                quit = "<ESC>",
            },
            finder_action_keys = {
                quit = "<ESC>",
            },
            rename_action_keys = {
                quit = "<ESC>",
            },
        }
    }
}
