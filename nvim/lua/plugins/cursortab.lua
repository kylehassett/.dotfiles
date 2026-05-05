return {
    {
        'cursortab/cursortab.nvim',
        lazy = false,
        build = 'cd server && go build',
        config = function()
            require('cursortab').setup({
                provider = {
                    type = "sweep",
                    url = "http://192.168.1.9:1234"
                }
            })
        end
    }
}
