-- ~/.config/nvim/lua/config/plugins/treesitter.lua
return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter").setup({
        ensure_installed = {"nix"},
        auto_install = false,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },
}