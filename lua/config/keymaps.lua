-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set(
    "n",
    "<leader>fh",
    "<cmd>Telescope find_files hidden=true<cr>",
    { desc = "show hidden files (Telescope)" }
)
