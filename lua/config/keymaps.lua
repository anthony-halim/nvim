-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Jumps
vim.keymap.set("n", "gj", [[<C-O>]], { desc = "Previous jump" })

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Move half page down" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Move half page up" })

-- Safety
vim.keymap.set("n", "Q", "<nop>")

-- This is going to get me cancelled
vim.keymap.set("v", "<C-c>", [["+Y]])
