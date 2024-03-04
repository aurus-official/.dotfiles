return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")
		-- REQUIRED
		harpoon:setup()
		-- REQUIRED
		vim.keymap.set("n", "<leader>hm", function()
			harpoon:list():append()
		end)
		vim.keymap.set("n", "<leader>sm", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end)

		-- Toggle previous & next buffers stored within Harpoon list
		vim.keymap.set("n", "<leader>,", function()
			harpoon:list():prev()
		end)
		vim.keymap.set("n", "<leader>.", function()
			harpoon:list():next()
		end)
	end,
}
