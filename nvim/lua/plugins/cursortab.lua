return {
    {
        'cursortab/cursortab.nvim',
        lazy = false,
        build = 'cd server && go build',
        config = function()
            require('cursortab').setup({
                provider = {
                    type = "sweep",
                    url = "http://localhost:1234"
                }
            })
        end
    }
}
