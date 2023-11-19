local M = {}

M.tt = {
    n = {
        ["<leader>tff"] = {":LspInfo <CR>", "Telescope"},
        ["<leader><leader>"] = {":lua require('dap).step_over()<CR>"},
        ["<leader>db"] = {":lua require('dap').continue()<cr>"}
    }
}

return M




--- Debugger
--map('n', '', '', options)
--map('n', '<leader><leader>', ':lua require("dap").step_over()<cr>', options)
--map('n', '<leader>dsi', ':lua require("dap").step_into()<cr>', options)
--map('n', '<leader>dsou', ':lua require("dap").step_out()<cr>', options)
--map('n', '<leader><F1>', ':lua require("dap").toggle_breakpoint()<cr>', options)
--map('n', '<leader><F2>', ':lua require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))<cr>', options)
--map('n', '<leader>dreo', ':lua require("dap").repl_open()<cr>', options)
--map('n', '<leader>drl', ':lua require("dap").run_last()<cr>', options)

-- Debugui
--map('n', '<leader><F3>', ':lua require("dapui").toggle()<cr>', options)
