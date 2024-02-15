-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set(
    "n",
    "<leader>fh",
    "<cmd>Telescope find_files hidden=true<cr>",
    { desc = "show hidden files (Telescope)" }
)

-- recommended mappings
-- resizing splits
-- these keymaps will also accept a range,
-- for example `10<A-h>` will `resize_left` by `(10 * config.default_amount)`
vim.keymap.set("n", "<A-h>", require("smart-splits").resize_left, { desc = "resize left" })
vim.keymap.set("n", "<A-j>", require("smart-splits").resize_down, { desc = "resize down" })
vim.keymap.set("n", "<A-k>", require("smart-splits").resize_up, { desc = "resize up" })
vim.keymap.set("n", "<A-l>", require("smart-splits").resize_right, { desc = "resize right" })
-- moving between splits
vim.keymap.set("n", "<C-h>", require("smart-splits").move_cursor_left, { desc = "move cursor left" })
vim.keymap.set("n", "<C-j>", require("smart-splits").move_cursor_down, { desc = "move cursor down" })
vim.keymap.set("n", "<C-k>", require("smart-splits").move_cursor_up, { desc = "move cursor up" })
vim.keymap.set("n", "<C-l>", require("smart-splits").move_cursor_right, { desc = "move cursor right" })
-- swapping buffers between windows
-- vim.keymap.set("n", "<leader>h", require("smart-splits").swap_buf_left, { desc = "buf left" })
-- vim.keymap.set("n", "<leader>j", require("smart-splits").swap_buf_down, { desc = "buf down" })
-- vim.keymap.set("n", "<leader>k", require("smart-splits").swap_buf_up, { desc = "buf up" })
-- vim.keymap.set("n", "<leader>l", require("smart-splits").swap_buf_right, { desc = "buf right" })
