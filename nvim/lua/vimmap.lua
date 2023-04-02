vim.g.mapleader = " "
vim.g.maplocalleader = " "

local options = { noremap = true }

vim.keymap.set('n', '<leader>tg', ':Telescope live_grep<CR>', options)
vim.keymap.set('n', '<F9>', ':NERDTreeToggle<cr>', options)
vim.keymap.set('i', '<F9>', '<esc>:NERDTreeToggle<cr>', options)
vim.keymap.set('n', '<F10>', ':NERDTreeFocus<cr>', options)
vim.keymap.set('i', '<F10>', '<esc>:NERDTreeFocus<cr>', options)
vim.keymap.set('n', '<leader>sp', ':set paste<cr>i', options)
vim.keymap.set('n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<cr>', options)
vim.keymap.set('n', '<leader>p', '<cmd>lua vim.lsp.buf.definition()<cr>', options)

--- Window management
vim.keymap.set('n', '<leader>wt', '<C-w>T', options )

vim.keymap.set('n', '<leader>wrh', '<C-w><', options )
vim.keymap.set('n', '<leader>wrj', '<C-w>+', options )
vim.keymap.set('n', '<leader>wrk', '<C-w>-', options )
vim.keymap.set('n', '<leader>wrl', '<C-w>>', options )

vim.keymap.set('n', '<leader>wh', '<C-w>h', options )
vim.keymap.set('n', '<leader>wj', '<C-w>j', options )
vim.keymap.set('n', '<leader>wk', '<C-w>k', options )
vim.keymap.set('n', '<leader>wl', '<C-w>l', options )


--- Debugger
vim.keymap.set('n', '<leader><F3>', ':lua require("dap").continue()<cr>', options)
vim.keymap.set('n', '<leader><F4>', ':lua require("dap").disconnect()<cr>', options)
vim.keymap.set('n', '<leader><leader>', ':lua require("dap").step_over()<cr>', options)
vim.keymap.set('n', '<leader>dsi', ':lua require("dap").step_into()<cr>', options)
vim.keymap.set('n', '<leader>dsou', ':lua require("dap").step_out()<cr>', options)
vim.keymap.set('n', '<leader><F1>', ':lua require("dap").toggle_breakpoint()<cr>', options)
vim.keymap.set('n', '<leader><F2>', ':lua require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))<cr>', options)
vim.keymap.set('n', '<leader>dreo', ':lua require("dap").repl_open()<cr>', options)
vim.keymap.set('n', '<leader>drl', ':lua require("dap").run_last()<cr>', options)
vim.keymap.set('n', '<leader>dbt', ':lua require("dap").run_last()<cr>', options)

-- Debugui
vim.keymap.set('n', '<leader><F9>', ':lua require("dapui").toggle()<cr>', options)
