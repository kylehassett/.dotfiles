return {
    {
        'cursortab/cursortab.nvim',
        lazy = false,
        build = 'cd server && go build',
        config = function()
            require('cursortab').setup({
                provider = {
                    completion_timeout = 60000,
                    model = "sweep-next-edit-1.5b",
                    type = "sweep",
                    url = "http://localhost:1234",
                },
                ui = {
                    completions = {
                        addition_style = "highlight"
                    },
                }
            })
        end
    }
}
