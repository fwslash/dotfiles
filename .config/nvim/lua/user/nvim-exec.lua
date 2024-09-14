vim.api.nvim_exec([[
  autocmd! BufRead,BufNewFile Jenkinsfile,Jenkinsfile* setlocal filetype=groovy
]], false)

vim.api.nvim_exec([[
  autocmd! BufRead,BufNewFile *.tf,*.tfvars setlocal filetype=terraform
]], false)

