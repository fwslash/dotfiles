local map = vim.api.nvim_set_keymap
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local mapleader = " "

options = { noremap = true }
--vim.cmd([[nmap <F1> :NvimTreeOpen<CR>]])
--vim.cmd([[nmap <F2> :NvimTreeClose<CR>]])
map('n', '<leader>tg', ':Telescope live_grep<CR>', options)
map('n', '<F1>', ':NvimTreeToggle<cr>', options)
map('n', '<leader>sp', ':set paste<cr>i', options)
