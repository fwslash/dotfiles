vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.scrolloff = 10

vim.opt.clipboard = ""

-- Window local functions
vim.wo.wrap = false


vim.filetype.add({
    extension = {
        bats = "sh"
    }
})

