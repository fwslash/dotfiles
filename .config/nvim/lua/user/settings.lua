vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.scrolloff = 10

vim.opt.clipboard = ""

--vim.opt.guicursor = ""
-- Window local functions
vim.wo.wrap = false

vim.opt.listchars = "space:·,tab:»·,trail:~"
vim.opt.list = true

vim.filetype.add({
    extension = {
        bats = "sh"
    }
})

