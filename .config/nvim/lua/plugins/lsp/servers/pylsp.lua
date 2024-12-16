local M = {}

M.setup = function()
	require("lspconfig").pylsp.setup({
		autostart = false,
		settings = {
			pylsp = {
				plugins = {
					pycodestyle = {
						maxLineLength = 120,
						indentSize = 2,
					},
				},
			},
		},
	})
end

return M
