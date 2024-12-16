-- lsp-zero.lua
return {
	"VonHeikemen/lsp-zero.nvim",
	branch = "v4.x",
	lazy = true,
	cmd = "LspStart",
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/nvim-cmp",
	},
	config = function()
		require("plugins.lsp.lsp").setup()
		require("plugins.lsp.cmp").setup()
	end,
}
