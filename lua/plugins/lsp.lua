return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = {
                "bashls",
                "clangd",
                "cssls",
                "dockerls",
                "gopls",
                "html",
                "jsonls",
                "lua_ls",
                "pyright",
                "rust_analyzer",
            },
        })

        local lspconfig = require("lspconfig")
        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        lspconfig.bashls.setup({ capabilities = capabilities })
        lspconfig.clangd.setup({ capabilities = capabilities })
        lspconfig.cssls.setup({ capabilities = capabilities })
        lspconfig.dockerls.setup({ capabilities = capabilities })
        lspconfig.gopls.setup({ capabilities = capabilities })
        lspconfig.html.setup({ capabilities = capabilities })
        lspconfig.jsonls.setup({ capabilities = capabilities })
        lspconfig.lua_ls.setup({
            settings = {
                Lua = {
                    diagnostics = { globals = { "vim" } },
                    workspace = { checkThirdParty = false },
                },
            },
            capabilities = capabilities,
        })
        lspconfig.pyright.setup({ capabilities = capabilities })
        lspconfig.rust_analyzer.setup({ capabilities = capabilities })
    end,
}
