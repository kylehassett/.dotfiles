return {
    {
        'lukas-reineke/indent-blankline.nvim',
        main = "ibl",
        ---@module "ibl"
        ---@type ibl.config
        opts = {
            whitespace = {
                highlight = { "CursorColumn", "Whitespace", }
            },
        }
    }
}
