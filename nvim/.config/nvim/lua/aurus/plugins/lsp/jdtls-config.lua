return {
	{
		"neovim/nvim-lspconfig",
		dependencies = { "mfussenegger/nvim-jdtls" },
		opts = {
			setup = {
				jdtls = function(_, opts)
					vim.api.nvim_create_autocmd("FileType", {
						pattern = "java",
						callback = function()
							require("lazyvim.util").on_attach(function(_, buffer)
								vim.keymap.set(
									"n",
									"<leader>di",
									"<Cmd>lua require'jdtls'.organize_imports()<CR>",
									{ buffer = buffer, desc = "Organize Imports" }
								)
								vim.keymap.set(
									"n",
									"<leader>dt",
									"<Cmd>lua require'jdtls'.test_class()<CR>",
									{ buffer = buffer, desc = "Test Class" }
								)
								vim.keymap.set(
									"n",
									"<leader>dn",
									"<Cmd>lua require'jdtls'.test_nearest_method()<CR>",
									{ buffer = buffer, desc = "Test Nearest Method" }
								)
								vim.keymap.set(
									"v",
									"<leader>de",
									"<Esc><Cmd>lua require('jdtls').extract_variable(true)<CR>",
									{ buffer = buffer, desc = "Extract Variable" }
								)
								vim.keymap.set(
									"n",
									"<leader>de",
									"<Cmd>lua require('jdtls').extract_variable()<CR>",
									{ buffer = buffer, desc = "Extract Variable" }
								)
								vim.keymap.set(
									"v",
									"<leader>dm",
									"<Esc><Cmd>lua require('jdtls').extract_method(true)<CR>",
									{ buffer = buffer, desc = "Extract Method" }
								)
								vim.keymap.set(
									"n",
									"<leader>cf",
									"<cmd>lua vim.lsp.buf.formatting()<CR>",
									{ buffer = buffer, desc = "Format" }
								)
							end)

							local config = {
								cmd = { "/home/aururus/.local/share/nvim/mason/bin/jdtls" },
								root_dir = vim.fs.dirname(
									vim.fs.find({ "gradlew", ".git", "mvnw" }, { upward = true })[1]
								),
							}
							require("jdtls").start_or_attach(config)
						end,
					})
					return true
				end,
			},
		},
	},
}
