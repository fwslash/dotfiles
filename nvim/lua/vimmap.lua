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

--- Window management
map('n', '<leader>wt', '<C-w>T', options )

map('n', '<leader>wrh', '<C-w><', options )
map('n', '<leader>wrj', '<C-w>+', options )
map('n', '<leader>wrk', '<C-w>-', options )
map('n', '<leader>wrl', '<C-w>>', options )

map('n', '<leader>wh', '<C-w>h', options )
map('n', '<leader>wj', '<C-w>j', options )
map('n', '<leader>wk', '<C-w>k', options )
map('n', '<leader>wl', '<C-w>l', options )


--- Debugger
map('n', '<leader><F3>', ':lua require("dap").continue()<cr>', options)
map('n', '<leader><F4>', ':lua require("dap").disconnect()<cr>', options)
map('n', '<leader><leader>', ':lua require("dap").step_over()<cr>', options)
map('n', '<leader>dsi', ':lua require("dap").step_into()<cr>', options)
map('n', '<leader>dsou', ':lua require("dap").step_out()<cr>', options)
map('n', '<leader><F1>', ':lua require("dap").toggle_breakpoint()<cr>', options)
map('n', '<leader><F2>', ':lua require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))<cr>', options)
map('n', '<leader>dreo', ':lua require("dap").repl_open()<cr>', options)
map('n', '<leader>drl', ':lua require("dap").run_last()<cr>', options)
map('n', '<leader>dbt', ':lua require("dap").run_last()<cr>', options)

-- Debugui
map('n', '<leader><F9>', ':lua require("dapui").toggle()<cr>', options)
