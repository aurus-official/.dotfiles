return {
    'alessio-vivaldelli/java-creator-nvim',
    ft = 'java',
    opts = {
        keymaps = {
            java_new = "<leader>jn",
        },
        options = {
            auto_open = true, -- Open file after creation
            java_version = 17 -- Minimum Java version
        }
    }
}
