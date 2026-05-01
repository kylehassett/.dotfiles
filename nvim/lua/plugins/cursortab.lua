return {
    {
        'cursortab/cursortab.nvim',
        lazy = false,
        build = 'cd server && go build',
        config = function()
            require('cursortab').setup({
                ui = {
                    completions = {
                        addition_style = "highlight",

                    }
                },
                provider = {
                    type = "zeta-2",
                    url = "http://192.168.1.9:1234"
                }
            })
        end
    }
}
