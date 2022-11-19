local map = vim.api.nvim_set_keymap
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local mapleader = " "

options = { noremap = true }
map('n', '<leader>tg', ':Telescope live_grep<CR>', options)
map('n', '<F1>', ':NvimTreeToggle<cr>', options)
map('i', '<F1>', ':NvimTreeToggle<cr>', options)
map('n', '<leader>sp', ':set paste<cr>i', options)
--" LSP config (the mappings used in the default file don't quite work right)
--nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
--nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
--nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
--nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
--nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
--nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
--nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
--nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
--"
map('n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<cr>', options)
map('n', '<leader>p', '<cmd>lua vim.lsp.buf.definition()<cr>', options)
