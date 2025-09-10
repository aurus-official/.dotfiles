return {
    "mistweaverco/kulala.nvim",
    ft = { "http", "rest" },
    opts = {
        global_keymaps = {
            ["Send request"] = { -- sets global mapping
                "<leader>sr",
                function() require("kulala").run() end,
                mode = { "n", "v" },  -- optional mode, default is n
                desc = "Send request" -- optional description, otherwise inferred from the key
            },
            ["Send all requests"] = {
                "<leader>sa",
                function() require("kulala").run_all() end,
                mode = { "n", "v" },
                ft = "http", -- sets mapping for *.http files only
            },
            ["Replay the last request"] = {
                "<leader>sl",
                function() require("kulala").replay() end,
                ft = { "http", "rest" }, -- sets mapping for specified file types
            },
            ["Find request"] = false     -- set to false to disable
        },
        kulala_keymaps = false
    },

}
