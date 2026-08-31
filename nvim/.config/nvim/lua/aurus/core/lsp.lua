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
vim.lsp.enable("kotlin_lsp")
vim.lsp.handlers["window/showMessage"] = function(_, result, ctx)
	local msg = result.message or ""
	if msg:find("Position") or msg:find("completionItems") then
		return
	end
	return vim.lsp.handlers["window/showMessage"](_, result, ctx)
end

vim.lsp.config["drools_lsp"] = {
	cmd = { "java", "-jar", vim.fn.expand("$MASON/packages/drools-lsp/drools-lsp-server-jar-with-dependencies.jar") },
	filetypes = { "drools" },
	root_markers = { ".git", "pom.xml" },
	capabilities = (function()
		-- Get default cmp capabilities
		local caps = require("cmp_nvim_lsp").default_capabilities()
		-- Force completionProvider details because the server sends an empty dict
		caps.textDocument = caps.textDocument or {}
		caps.textDocument.completion = caps.textDocument.completion or {}
		return caps
	end)(),

	on_attach = function(client, bufnr)
		-- Manually override the empty dictionary returned by the server
		client.server_capabilities.completionProvider = {
			triggerCharacters = { ".", " ", "(", "$" },
			resolveProvider = true,
		}
	end,
}
vim.lsp.enable("drools_lsp")
vim.cmd([[ autocmd BufRead,BufNewFile *.drl set filetype=drools ]])
-- local jdtls_path = vim.fn.expand("$MASON/packages/drools-lsp")
