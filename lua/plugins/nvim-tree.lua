return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons", -- optional, for file icons
        "rose-pine/neovim", -- optional, for colorscheme
    },
    config = function()
        require("nvim-tree").setup({
            view = {
                adaptive_size = true,
                side = "left",
            },
            renderer = {
                highlight_git = true,
                highlight_opened_files = "name",
                indent_markers = {
                    enable = true,
                },
                icons = {
                    glyphs = {
                        default = "",
                        symlink = "",
                        folder = {
                            arrow_open = "",
                            arrow_closed = "",
                            default = "",
                            open = "",
                            empty = "",
                            empty_open = "",
                            symlink = "",
                            symlink_open = "",
                        },
                        git = {
                            unstaged = "✗",
                            staged = "✓",
                            unmerged = "",
                            renamed = "➜",
                            untracked = "★",
                            deleted = "",
                            ignored = "◌",
                        },
                    },
                    show = {
                        file = true,
                        folder = true,
                        git = true,
                    },
                },
            },
            filters = {
                dotfiles = false,
            },
        })
        -- Key mappings for nvim-tree
        vim.api.nvim_set_hl(0, "NvimTreeFolderIcon", { fg = "#9ccfd8" }) -- foam
        vim.api.nvim_set_hl(0, "NvimTreeOpenedFolderName", { fg = "#c4a7e7", bold = true }) -- iris
        vim.api.nvim_set_hl(0, "NvimTreeGitDirty", { fg = "#f6c177" }) -- gold
        vim.api.nvim_set_hl(0, "NvimTreeGitNew", { fg = "#31748f" }) -- pine
        vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
    end,
}