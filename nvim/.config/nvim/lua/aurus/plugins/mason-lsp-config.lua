return {
	"mason-org/mason-lspconfig.nvim",
	opts = {
		ensure_installed = {},

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
			"lemminx",
			"docker_compose_language_service",
			"dockerls",

			exclude = {
				"jdtls",
				"kotlin_lsp",
			},
		},
	},
}
