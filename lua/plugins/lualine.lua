return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons", "catppuccin/nvim" },
  config = function()
    require("lualine").setup({
      options = {
        theme = "catppuccin",
        component_separators = { left = "│", right = "│" },
        section_separators = { left = "", right = "" },
        disabled_filetypes = { 
          statusline = { "dashboard", "alpha", "starter"},
          winbar = {},
        },
        globalstatus = true, -- Enable global statusline
      },
      sections = {
        lualine_a = { "mode", separator = { left = ""}, right_padding = 2 },
        lualine_b = { "branch", {"diff", colored = true, symbols = { added = " ", modified = "", removed = " " }}, {"diagnostics",symbols = { error = " ", warn = " ", info = " ", hint = " " } } },
        lualine_c = { "filename" },
        lualine_x = { "encoding", "fileformat", "filetype" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { "filename" },
        lualine_x = { "location" },
        lualine_y = {},
        lualine_z = {},
      },
      extensions = {},
    })
}