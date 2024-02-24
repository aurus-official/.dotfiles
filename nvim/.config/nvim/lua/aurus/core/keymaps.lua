local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "
vim.g.user_emmet_leader_key = "<C-s>"
vim.g.python3_host_prog = "/usr/bin/python"

-- Telescope Bindings
map("n", "<leader>ff", ":Telescope find_files<CR>", opts)
map("n", "<leader>gf", ":Telescope git_files<CR>", opts)
map("n", "<leader>fs", ":Telescope grep_string<CR>", opts)
map("n", "<leader>dc", ":Telescope lsp_document_symbols<CR>", opts)

-- LSP Bindings
map("n", "gd", ":lua vim.lsp.buf.definition()<CR>", opts)
map("n", "K", ":lua vim.lsp.buf.hover()<CR>", opts)
map("n", "gi", ":lua vim.lsp.buf.implementation()<CR>", opts)
map("n", "<C-k>", ":lua vim.lsp.buf.signature_help()<CR>", opts)
map("n", "<space>wa", ":lua vim.lsp.buf.add_workspace_folder()<CR>", opts)
map("n", "<space>wr", ":lua vim.lsp.buf.remove_workspace_folder()<CR>", opts)
map("n", "<space>wl", ":lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", opts)
map("n", "<space>D", ":lua vim.lsp.buf.type_definition()<CR>", opts)
map("n", "<space>rn", ":lua vim.lsp.buf.rename()<CR>", opts)
map("n", "<space>ca", ":lua vim.lsp.buf.code_action()<CR>", opts)
map("n", "gr", ":lua vim.lsp.buf.references()<CR>", opts)
map("n", "<space>f", ":lua vim.lsp.buf.formatting()<CR>", opts)

-- Trouble.nvim Bindings
map("n", "<leader>at", "<cmd>TroubleToggle<cr>", opts)

-- Vim Fugitive
map("n", "<leader>gs", ":Git", opts)

-- Vim UndoTree
map("n", "<leader>u", ":UndotreeToggle<CR>", opts)

-- Own Bindings Here
map("n", "<C-d>", "<C-d>zz", opts)
map("n", "<C-u>", "<C-u>zz", opts)
map("n", "<leader>p", ":Ex<CR>", opts)
map("n", "<leader>y", '"+y', opts)

-- Debug Adapter Protocol
vim.keymap.set("n", "<F5>", function()
	require("dap").continue()
end)
vim.keymap.set("n", "<F10>", function()
	require("dap").step_over()
end)
vim.keymap.set("n", "<F11>", function()
	require("dap").step_into()
end)
vim.keymap.set("n", "<F12>", function()
	require("dap").step_out()
end)
vim.keymap.set("n", "<Leader>b", function()
	require("dap").toggle_breakpoint()
end)
vim.keymap.set("n", "<Leader>B", function()
	require("dap").set_breakpoint()
end)
vim.keymap.set("n", "<Leader>lp", function()
	require("dap").set_breakpoint(nil, nil, vim.fn.input("Log point message: "))
end)
vim.keymap.set("n", "<Leader>dr", function()
	require("dap").repl.open()
end)
vim.keymap.set("n", "<Leader>dl", function()
	require("dap").run_last()
end)
vim.keymap.set({ "n", "v" }, "<Leader>dh", function()
	require("dap.ui.widgets").hover()
end)
vim.keymap.set({ "n", "v" }, "<Leader>dp", function()
	require("dap.ui.widgets").preview()
end)
vim.keymap.set("n", "<Leader>df", function()
	local widgets = require("dap.ui.widgets")
	widgets.centered_float(widgets.frames)
end)
vim.keymap.set("n", "<Leader>ds", function()
	local widgets = require("dap.ui.widgets")
	widgets.centered_float(widgets.scopes)
end)
