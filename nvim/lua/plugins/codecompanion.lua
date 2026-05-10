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
                    lmstudio = function()
                        return require("codecompanion.adapters").extend("openai_compatible", {
                            env = {
                                url = "http://192.168.1.9:1234",
                            },
                            schema = {
                                model = {
                                    default = "qwen/qwen3-coder-30b"
                                }
                            }
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
                background = { adapter = "lmstudio", },
                chat = {
                    adapter = "lmstudio",
                    opts = {
                        completion_provider = "blink",
                    }
                },
                cmd = { adapter = "lmstudio", },
                inline = { adapter = "lmstudio", },
            },
        },
        version = "^18.0.0",
    }
}
