vim.g.mapleader = " "

-- Clipboard
vim.keymap.set({ "v", "n" }, "<leader>y", '"*y')
vim.keymap.set("v", "<leader>p", '"*p')

-- LazyGit
vim.keymap.set("n", "<leader>lg", "<cmd>LazyGit<cr>")

-- Remove search highlight
vim.keymap.set("n", "<esc>", ":noh <cr>")

-- Start LSP
vim.keymap.set("n", "<leader>ss", ":LspStart <cr>")

vim.keymap.set("n", "<leader>wr", ":set wrap linebreak <cr>")

vim.keymap.set("n", "<leader>sc", ":set listchars=space:.,tab:>#,trail:~ | set list <cr>")
vim.keymap.set("n", "<leader>hc", ":set listchars= | set list <cr>")
