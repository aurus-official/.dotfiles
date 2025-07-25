return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
        ensure_installed = {
            "lua_ls",
            "gopls",
            "ts_ls",
            "rust_analyzer",
            "tailwindcss",
            "html",
            "cssls",
            "vuels",
            "clangd",
            "pyright",
            "jdtls",

        },

        automatic_enable = {
            "lua_ls",
            "gopls",
            "ts_ls",
            "rust_analyzer",
            "tailwindcss",
            "html",
            "cssls",
            "vuels",
            "clangd",
            "pyright",
        }
    },
}
