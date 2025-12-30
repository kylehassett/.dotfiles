return {
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {
            ensure_installed = {
                'angularls',
                'astro',
                'bashls',
                'clangd',
                'copilot-language-server',
                'cssls',
                'dockerls',
                'eslint',
                'emmet_ls',
                'gopls',
                'html',
                'jsonls',
                'jdtls',
                'lua_ls',
                'marksman',
                'prismals',
                'pyright',
                'sqlls',
                'svelte',
                'tailwindcss',
                'terraformls',
                'ts_ls',
                'yamlls',
            }
        },
        dependencies = {
            "mason-org/mason.nvim",
            "neovim/nvim-lspconfig",
        },
    }
}
