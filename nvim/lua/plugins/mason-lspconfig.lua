return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
        automatic_enable = {
            exclude = {
                'prettier',
                'harper_ls',
                'htmx',
            }
        },
        ensure_installed = {
            'angularls',
            'ansiblels',
            'astro',
            'bashls',
            'clangd',
            'cmake',
            'codebook',
            'cssls',
            'docker_language_server',
            'eslint',
            'gh_actions_ls',
            'gopls',
            'harper_ls',
            'html',
            'htmx',
            'jdtls',
            'jsonls',
            'kotlin_language_server',
            'lua_ls',
            'marksman',
            'nginx_language_server',
            'postgres_lsp',
            'prismals',
            'ruff',
            'sqlls',
            'svelte',
            'tailwindcss',
            'terraformls',
            'ts_ls',
            'vimls',
            'yamlls',
        }
    },
    dependencies = {
        "mason-org/mason.nvim",
        "neovim/nvim-lspconfig",
    },
    -- config = function(_, opts)
    --     require("mason-lspconfig").setup(opts)
    --
    --     local capabilities = require("blink.cmp").get_lsp_capabilities()
    --
    --     require("mason-lspconfig").setup_handlers({
    --         -- Default handler: runs for every installed server
    --         function(server_name)
    --             require("lspconfig")[server_name].setup({
    --                 capabilities = capabilities,
    --             })
    --         end,
    --
    --         -- Server-specific overrides go here, e.g.:
    --         -- ["lua_ls"] = function()
    --         --   require("lspconfig").lua_ls.setup({
    --         --     capabilities = capabilities,
    --         --     settings = { Lua = { diagnostics = { globals = { "vim" } } } },
    --         --   })
    --         -- end,
    --         })
    -- end,
}
