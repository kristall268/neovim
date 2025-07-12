return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "master",
        lazy = false,
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = {
                    "bash",
                    "c",
                    "cpp",
                    "css",
                    "cmake",
                    "dockerfile",
                    "go",
                    "html",
                    "javascript",
                    "json",
                    "lua",
                    "markdown",
                    "make",
                    "python",
                    "rust",
                    "typescript",
                },
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false,
                },
                indent = {
                    enable = true,
                },
                auto_install = true,
                sync_install = false,
            })
        end,
    }
}