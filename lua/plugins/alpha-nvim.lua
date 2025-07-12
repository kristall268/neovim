return {
  "goolord/alpha-nvim",
  
  dependencies = { "nvim-tree/nvim-web-devicons", "rose-pine/neovim", "nvim-lua/plenary.nvim", "echasnovski/mini.icons" },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    local colors = {
      header = "#c4a7e7", -- iris
      button = "#9ccfd8", -- foam
      button_shortcut = "#eb6f92", -- love
      footer = "#6e6a86", -- muted
    }

    dashboard.section.header.val = {
      "                                                     ",
      "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
      "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
      "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
      "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
      "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
      "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
      "                                                     ",
      "           🌹 Welcome to Rose Pine Neovim 🌹        ",
      "                                                     ",
    }
    dashboard.section.header.opts.hl = "AlphaHeader"

    dashboard.section.buttons.val = {
      dashboard.button("n", "  New File", ":ene <BAR> startinsert <CR>"),
      dashboard.button("f", "  Find File", ":Telescope find_files <CR>"),
      dashboard.button("r", "  Recent Files", ":Telescope oldfiles <CR>"),
      dashboard.button("s", "  Settings", ":e ~/.config/nvim/init.lua <CR>"),
      dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
    }

    dashboard.section.footer.val = function()
      local stats = require("lazy").stats()
      local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
      return {
        "",
        "🌹 Rose Pine × Catppuccin 🌹",
        "",
        "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms",
        "",
        "🎨 Beautiful coding environment ready",
        "",
      }
    end
    dashboard.section.footer.opts.hl = "AlphaFooter"

    dashboard.opts.layout = {
      { type = "padding", val = 2 },
      dashboard.section.header,
      { type = "padding", val = 1 },
      dashboard.section.buttons,
      { type = "padding", val = 1 },
      dashboard.section.footer,
    }

    dashboard.opts.opts.noautocmd = true

    vim.api.nvim_set_hl(0, "AlphaHeader", { fg = colors.header, bold = true })
    vim.api.nvim_set_hl(0, "AlphaButton", { fg = colors.button, bold = true })
    vim.api.nvim_set_hl(0, "AlphaButtonShortcut", { fg = colors.button_shortcut, bold = true })
    vim.api.nvim_set_hl(0, "AlphaFooter", { fg = colors.footer, italic = true })

    for _, button in pairs(dashboard.section.buttons.val) do
      button.opts.hl = "AlphaButton"
      button.opts.hl_shortcut = "AlphaButtonShortcut"
    end

    alpha.setup(dashboard.config)

    vim.keymap.set("n", "<leader>a", ":Alpha<CR>", { desc = "Open Alpha Dashboard" })

    vim.api.nvim_create_autocmd("User", {
      pattern = "AlphaReady",
      callback = function()
        vim.opt.showtabline = 0
      end,
    })
  end,
}