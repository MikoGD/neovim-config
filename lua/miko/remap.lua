vim.g.mapleader = " "
-- Open nvim file explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- mapping so that when you highlight lines you can move them up and down lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- When appending bottom line to current line cursor will remain in the same position
vim.keymap.set("n", "J", "mzJ`z")

-- When moving page up or down keeps cursor in the middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- When searching it keeps the search item in the center
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- When pasting over highlighted text it won't remove the currently copied text
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Copies to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Deletes to the void and not copy it
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- Sets Q to do nothing
vim.keymap.set("n", "Q", "<nop>")

-- Move up and down the quicklist
-- global list
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- local list
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Opens command to rename the word you are on
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
