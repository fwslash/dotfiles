local map = vim.api.nvim_set_keymap
vim.g.mapleader = " "
vim.g.maplocalleader = " "
  
local mapleader = " "

options = { noremap = true }
map('n', '<leader>tg', ':Telescope live_grep<CR>', options)
map('n', '<F9>', ':NvimTreeToggle<cr>', options)
map('i', '<F9>', '<esc>:NvimTreeToggle<cr>', options)
map('n', '<F10>', ':NvimTreeFocus<cr>', options)
map('i', '<F10>', '<esc>:NvimTreeFocus<cr>', options)
map('n', '<leader>sp', ':set paste<cr>i', options)
map('n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<cr>', options)
map('n', '<leader>p', '<cmd>lua vim.lsp.buf.definition()<cr>', options)
