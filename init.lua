require("core.keymaps")
require("core.options")
vim.lsp.enable('pyright')
require("config.lazy")

vim.api.nvim_create_autocmd("User", {
  pattern = "TelescopePreviewerLoaded",
  callback = function()
    vim.wo.wrap = true
  end,
})
