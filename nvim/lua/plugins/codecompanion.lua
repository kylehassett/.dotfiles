return {
    {
        "olimorris/codecompanion.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-treesitter/nvim-treesitter",
        },
        opts = {
            -- NOTE: The log_level is in `opts.opts`
            opts = {
                log_level = "DEBUG", -- or "TRACE"
            },
            adapters = {
                http = {
                    ollama = function()
                        return require("codecompanion.adapters").extend("openai_compatible", {
                            env = {
                                url = "http://192.168.120.62:1234",
                            },
                        })
                    end,
                },
            },
            display = {
                chat = {
                    separator = "---",
                    window = {
                        position = "right"
                    }
                }
            },
            interactions = {
                background = { adapter = "ollama", },
                chat = {
                    adapter = "ollama",
                    opts = {
                        completion_provider = "cmp",
                    }
                },
                cmd = { adapter = "ollama", },
                inline = { adapter = "ollama", },
            },
        },
        version = "^18.0.0",
    }
}
