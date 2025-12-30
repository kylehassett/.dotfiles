return {
    {
        'yetone/avante.nvim',
        branch = 'main',
        build = 'make',
        opts = {
            provider = "qianwen",
            providers = {
              qianwen = {
                __inherited_from = "openai",
                api_key_name = "",
                endpoint = "http://192.168.120.62:1234/v1",
                model = "qwen/qwen3-30b-a3b-2507",
              },
            },
        }
    }
}
