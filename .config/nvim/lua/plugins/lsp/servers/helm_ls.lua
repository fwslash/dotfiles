local M = {}

M.setup = function()
	require("lspconfig").helm_ls.setup({
		settings = {
			["helm-ls"] = {
				yamlls = {
					path = "yaml-language-server",
				},
			},
		},
	})
end

return M
