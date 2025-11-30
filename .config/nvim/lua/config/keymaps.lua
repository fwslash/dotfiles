-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Clipboard
vim.keymap.set({ "v", "n" }, "<leader>y", '"*y')
vim.keymap.set("v", "<leader>p", '"*p')

-- LazyGit
vim.keymap.set("n", "<leader>lg", "<cmd>LazyGit<cr>")

-- Remove search highlight
vim.keymap.set("n", "<esc>", ":noh <cr>")

-- Toggle diagnostics
vim.keymap.set("n", "<leader>dt", "<cmd>DiagnosticToggle<cr>")
