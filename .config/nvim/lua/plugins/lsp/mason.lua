local M = {}

M.setup = function()
	require("mason").setup({})
	require("mason-lspconfig").setup({
		ensure_installed = {
			"lua_ls",
			"bashls",
			"dockerls",
			"helm_ls",
			"pylsp",
			"gopls",
			"terraformls",
			"tailwindcss",
			"ts_ls",
		},
		auto_install = true,
		handlers = {
			function(server_name)
				require("lspconfig")[server_name].setup({
					autostart = false,
				})
			end,
			["pylsp"] = function()
				require("plugins.lsp.servers.pylsp").setup()
			end,

			["lua_ls"] = function()
				require("plugins.lsp.servers.lua_ls").setup()
			end,

			["helm-ls"] = function()
				require("plugins.lsp.servers.helm_ls").setup()
			end,
		},
	})
end

return M
