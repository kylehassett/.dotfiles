return {
    {
        "OXY2DEV/markview.nvim",
        -- dependencies = {
        --     'nvim-treesitter/nvim-treesitter',
        --     'dracula/vim'
        -- },
        lazy = false,
        opts = {
            preview = {
                filetypes = { "markdown", "codecompanion" },
                ignore_buftypes = {},
                condition = function (buffer)
                    local ft, bt = vim.bo[buffer].ft, vim.bo[buffer].bt;

                    if bt == "nofile" and ft == "codecompanion" then
                         return true;
                    elseif bt == "nofile" then
                         return false;
                    else
                         return true;
                    end
                end
            },
        },
    }
}
