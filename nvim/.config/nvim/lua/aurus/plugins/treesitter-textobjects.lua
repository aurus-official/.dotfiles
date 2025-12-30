return {
    "nvim-treesitter/nvim-treesitter-textobjects",
    dependencies = "nvim-treesitter/nvim-treesitter",
    branch = "main",
    init = function()
        vim.g.no_plugin_maps = true
    end,
    config = function()
        require("nvim-treesitter-textobjects").setup({
            -- opts here
        })
    end
}
