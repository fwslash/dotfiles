-- Create an autocommand group to hold your settings
vim.api.nvim_create_augroup("PythonSettings", { clear = true })

-- Define the autocommand for Python files
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
	group = "PythonSettings",
	pattern = "*.py",
	callback = function()
		vim.bo.tabstop = 4
		vim.bo.softtabstop = 4
		vim.bo.shiftwidth = 4
		vim.bo.expandtab = true
		vim.bo.autoindent = true
	end,
})
