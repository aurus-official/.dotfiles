vim.lsp.config["jdtls"] = require("aurus.lsp.java").setup_jdtls()
vim.lsp.enable("jdtls")

vim.lsp.enable("kulala_ls")

-- vim.lsp.config["kotlin_lsp"] = {
-- 	cmd = { "kotlin-lsp", "--stdio" },
-- 	filetypes = { "kotlin" },
-- 	root_markers = {
-- 		"settings.gradle",
-- 		"settings.gradle.kts",
-- 		"pom.xml",
-- 		"build.gradle",
-- 		"build.gradle.kts",
-- 		"workspace.json",
-- 	},
-- }
