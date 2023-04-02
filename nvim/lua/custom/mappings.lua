local options = { noremap = true }
vim.keymap.set('n', '<leader>wt', '<C-w>T', options )

vim.keymap.set('n', '<leader>wrh', '<C-w><', options )
vim.keymap.set('n', '<leader>wrj', '<C-w>+', options )
vim.keymap.set('n', '<leader>wrk', '<C-w>-', options )
vim.keymap.set('n', '<leader>wrl', '<C-w>>', options )

vim.keymap.set('n', '<leader>wh', '<C-w>h', options )
vim.keymap.set('n', '<leader>wj', '<C-w>j', options )
vim.keymap.set('n', '<leader>wk', '<C-w>k', options )
vim.keymap.set('n', '<leader>wl', '<C-w>l', options )



-- Terragrunt commands
vim.keymap.set('n', '<leader>tp', ':lua require("custom.terragrunt").tg()<CR>)', options)

