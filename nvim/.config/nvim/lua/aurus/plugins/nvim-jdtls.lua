return {
    'mfussenegger/nvim-jdtls',
    version = false, -- set this if you want to always pull the latest change
    -- ft = { "java" },
    -- UPDATE: this will cause jump to class not work as expect
    -- dependencies = {
    --     -- 'mfussenegger/nvim-dap',
    --     'williamboman/mason.nvim',
    --     'williamboman/mason-lspconfig.nvim',
    --     "neovim/nvim-lspconfig",
    -- },
    -- opts = {
    --     cmd = {}, -- leave to config staged
    --     root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw', '.root'}, { upward = true })[1]),
    -- },
    config = function(_, _)
        -- We using mason-lspconfig, not using it according to readme
        local jdtls = require('jdtls')
        opts = {
            -- cmd = require('lspconfig').jdtls.document_config.default_config.cmd,
            cmd = vim.api.nvim_create_autocmd('LspAttach', {
                group = vim.api.nvim_create_augroup('UserLspKeymaps', {}),
                callback = function(event)
                    -- Set keymaps here, e.g.,
                    -- vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = event.buf })
                end
            }),
            -- See: https://github.com/mfussenegger/nvim-jdtls?tab=readme-ov-file#configuration-verbose
            root_dir = require("jdtls.setup").find_root({ ".git", "mvnw", "gradlew" }),
        }

        vim.api.nvim_create_autocmd("Filetype", {
            pattern = "java",
            callback = function()
                require("jdtls").start_or_attach(opts)
            end,
        })
    end
}
