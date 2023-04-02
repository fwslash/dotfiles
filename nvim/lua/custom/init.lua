local set = vim.opt

-- Set the behavior of tab
set.tabstop = 2
set.shiftwidth = 2
set.softtabstop = 2
set.expandtab = true

-- Current line number
set.cursorline = true
set.number = true

-- Cursor never at the bottom
set.scrolloff = 8
set.signcolumn = "yes"
set.isfname:append("@-@")

-- Relativenumber 
set.relativenumber = true


require("custom.mappings")
