local grep_ignore_globs = {
    "--glob",
    "!**/.git/*",
    "--glob",
    "!**/.aws-sam/*",
    "--glob",
    "!**/.circleci/*",
    "--glob",
    "!**/dist/*",
    "--glob",
    "!**/node_modules/*",
    "--glob",
    "!**/venv/*",
    "--glob",
    "!**/.next/*",
    "--glob",
    "!**/build/*",
    "--glob",
    "!**/__pycache__/*",
    "--glob",
    "!**/.pytest_cache/*",
    "--glob",
    "!**/.eslintcache",
    "--glob",
    "!**/.DS_Store",
    "--glob",
    "!**/python/*",
    "--glob",
    "!**/playwright-report/*",
}

return {
    {
        'nvim-telescope/telescope.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' },
        opts = {
            defaults = {
                layout_strategy = "vertical",
                layout_config = {
                    vertical = {
                        height = 0.95,
                        mirror = true,
                        preview_height = 0.5,
                        prompt_position = "bottom",
                        width = 0.95,
                    },
                },
                vimgrep_arguments = {
                    "rg",
                    "--color=never",
                    "--no-heading",
                    "--with-filename",
                    "--line-number",
                    "--column",
                    "--smart-case",
                    "--hidden",
                    "--no-ignore",
                    "--sort",
                    "path",
                    unpack(grep_ignore_globs)
                },
            },
            extensions = {
                media_files = {
                    filetypes = {"jpg", "jpeg", "pdf", "png", "tif", "tiff", "webp"},
                    find_command = { "rg", "--files", "--hidden", "--no-ignore", "--sort", "path", unpack(grep_ignore_globs) },
                }
            },
            pickers = {
                find_files = {
                    find_command = { "rg", "--files", "--hidden", "--no-ignore", "--sort", "path", unpack(grep_ignore_globs) },
                }
            }
        }
    }
}
