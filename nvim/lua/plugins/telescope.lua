local grep_ignore_globs = {
    "--glob",
    "!**/.aws-sam/*",
    "--glob",
    "!**/.circleci/*",
    "--glob",
    "!**/.DS_Store",
    "--glob",
    "!**/.dvc/*",
    "--glob",
    "!**/.elasticbeanstalk",
    "--glob",
    "!**/.eslintcache",
    "--glob",
    "!**/.git/*",
    "--glob",
    "!**/.next/*",
    "--glob",
    "!**/.pytest_cache/*",
    "--glob",
    "!**/__pycache__/*",
    "--glob",
    "!**/build/*",
    "--glob",
    "!**/dist/*",
    "--glob",
    "!**/htmlcov/*",
    "--glob",
    "!**/node_modules/*",
    "--glob",
    "!**/playwright-report/*",
    "--glob",
    "!**/custom_email/python/*",
    "--glob",
    "!**/venv/*",
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
