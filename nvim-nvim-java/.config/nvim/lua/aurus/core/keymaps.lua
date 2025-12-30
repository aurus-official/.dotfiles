local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "
vim.g.user_emmet_leader_key = "<C-s>"
vim.g.python3_host_prog = "/usr/bin/python"

-- Telescope Bindings
map("n", "<leader>ff", ":Telescope find_files<CR>", opts)
map("n", "<leader>gf", ":Telescope git_files<CR>", opts)
map("n", "<leader>fs", ":Telescope grep_string<CR>", opts)
map("n", "<leader>ds", ":Telescope lsp_document_symbols<CR>", opts)

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

-- Vim Fugitive
map("n", "<leader>gs", ":Git<CR>", opts)

-- Vim UndoTree
map("n", "<leader>u", ":UndotreeToggle<CR>", opts)

-- Own Bindings Here
map("n", "<C-d>", "<C-d>zz", opts)
map("n", "<C-u>", "<C-u>zz", opts)
map("n", "<leader>p", ":Ex<CR>", opts)
map("n", "<leader>y", '"+y', opts)
