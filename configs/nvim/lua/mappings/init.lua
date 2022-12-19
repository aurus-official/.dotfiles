local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '
vim.g.user_emmet_leader_key = '<C-s>'
vim.g.python3_host_prog = "/usr/bin/python"

-- Harpoon Bindings
map('n', '<leader>hm', ':lua require("harpoon.mark").add_file()<CR>', opts)
map('n', '<leader>sm', ':lua require("harpoon.ui").toggle_quick_menu()<CR>', opts)

map('n', '<leader>m1', ':lua require("harpoon.ui").nav_file(1)<CR>', opts)
map('n', '<leader>m2', ':lua require("harpoon.ui").nav_file(2)<CR>', opts)
map('n', '<leader>m3', ':lua require("harpoon.ui").nav_file(3)<CR>', opts)
map('n', '<leader>m4', ':lua require("harpoon.ui").nav_file(4)<CR>', opts)
map('n', '<leader>m5', ':lua require("harpoon.ui").nav_file(5)<CR>', opts)

map('n', '<leader>,', ':lua require("harpoon.ui").nav_prev()<CR>', opts)
map('n', '<leader>.', ':lua require("harpoon.ui").nav_next()<CR>', opts)

-- Telescope Bindings
map('n', '<leader>ff', ':Telescope find_files<CR>', opts)
map('n', '<leader>gf', ':Telescope git_files<CR>', opts)

-- Trouble.nvim Bindings
map("n", "<leader>at", "<cmd>TroubleToggle<cr>", opts)

-- Auto formatting
map("n", "<leader>af", "<cmd>:Autoformat<cr>", opts)

-- Vim Fugitive
map("n", "<leader>gs", ":Git", opts)

-- Vim UndoTree
map("n", "<leader>u", ":UndotreeToggle<CR>", opts)

-- Own Bindings Here
map("n", "<C-d>", "<C-d>zz", opts)
map("n", "<C-u>", "<C-u>zz", opts)
map("n", "<leader>p", ":Ex<CR>", opts)
map("n", "<leader>y", "\"+y", opts)



