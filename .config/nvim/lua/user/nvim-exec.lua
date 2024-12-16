vim.api.nvim_exec(
	[[
  autocmd! BufRead,BufNewFile Jenkinsfile,Jenkinsfile* setlocal filetype=groovy tabstop=4 shiftwidth=4 expandtab
]],
	false
)

vim.api.nvim_exec(
	[[
  autocmd! BufRead,BufNewFile *.tf,*.tfvars setlocal filetype=terraform
]],
	false
)
