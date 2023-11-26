-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap

local opts = {
  noremap = true,
  silent = true,
}

-- Increment/Decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete a word backwords
keymap.set("n", "dw", "bvedi")

-- Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)

-- Select All
keymap.set("n", "<C-a>", "gg<S-v>G")
