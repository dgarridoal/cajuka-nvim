-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua Add any additional keymaps here

local keymap = vim.keymap

vim.keymap.set("i", "<C-d>", "<C-d>zz")
vim.keymap.set("i", "<C-u>", "<C-u>zz")
vim.keymap.set("i", "<C-b>", "<C-o>de")

-- Increment / decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete word back
keymap.set("n", "dw", "bvedi")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")
