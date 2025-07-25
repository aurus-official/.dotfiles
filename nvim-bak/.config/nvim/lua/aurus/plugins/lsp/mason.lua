return {
    "williamboman/mason.nvim", 
    version = "1.11.0",
    dependencies = {
        "williamboman/mason-lspconfig.nvim", 
        version = "1.32.0", 
    },
    config = function()
        require("mason").setup()
    end,
}
