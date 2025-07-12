return {
  "rose-pine/neovim",
  name = "rose-pine",
  priority = 1000,
  config = function()
    require("rose-pine").setup({
      variant = "main",
      dark_variant = "moon",
      dim_inactive_windows = false,
      extend_background_behind_borders = true,

      enable = {
        terminal = false,
        legacy_highlights = false,
        migrations = true,
      },

      styles = {
        bold = true,
        italic = true,
        transparency = false,
      },

      groups = {
        border = "muted",
        link = "iris",
        panel = "surface",

        error = "love",
        hint = "iris",
        info = "foam",
        note = "pine",
        todo = "rose",
        warn = "gold",

        git_add = "foam",
        git_change = "rose",
        git_delete = "love",
        git_dirty = "rose",
        git_ignore = "muted",
        git_merge = "iris",
        git_rename = "pine",
        git_stage = "iris",
        git_text = "rose",
        git_untracked = "subtle",

        h1 = "iris",
        h2 = "foam",
        h3 = "rose",
        h4 = "gold",
        h5 = "pine",
        h6 = "foam",
      },

      highlight_groups = {
        -- Dashboard specific highlights
        DashboardHeader = { fg = "iris", bold = true },
        DashboardCenter = { fg = "foam" },
        DashboardShortcut = { fg = "love", bold = true },
        DashboardFooter = { fg = "muted", italic = true },
        
        -- Alpha specific highlights
        AlphaHeader = { fg = "iris", bold = true },
        AlphaButtons = { fg = "foam" },
        AlphaShortcut = { fg = "love", bold = true },
        AlphaFooter = { fg = "muted", italic = true },
      },
    })
    vim.cmd("colorscheme rose-pine")
  end,
}