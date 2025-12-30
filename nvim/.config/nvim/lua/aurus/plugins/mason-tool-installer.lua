return {
	-- automated mason tool installation
	"WhoIsSethDaniel/mason-tool-installer.nvim",
	dependencies = {
		"williamboman/mason.nvim",
	},
	opts = {
		ensure_installed = {

			-- Language LSPs
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
			"vscode-spring-boot-tools",
			"lemminx",
			"docker_compose_language_service",
			"dockerls",
			"lemminx", -- XML

			-- DAPs
			"js-debug-adapter",
			"java-debug-adapter",
			"java-test",

			-- Linters

			-- Formatters
			"prettier",
			"prettierd",
			"stylua",
			"black",
		},
	},
}
