vim.api.nvim_exec([[
  autocmd! BufRead,BufNewFile Jenkinsfile setlocal filetype=groovy
]], false)

vim.api.nvim_exec([[
  autocmd! BufRead,BufNewFile Jenkinsfile* setlocal filetype=groovy
]], false)
