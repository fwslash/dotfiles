-- Format on save and linters
vim.api.nvim_create_user_command("NullLsStart", function()
	local null_ls = require("null-ls")

	null_ls.setup({
		sources = NullSources,
	})
end, {})

return {
	"nvimtools/none-ls.nvim",
	lazy = true,
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
		"jayp0521/mason-null-ls.nvim", -- ensure dependencies are installed
	},
	config = function()
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format)
		local null_ls = require("null-ls")
		local formatting = null_ls.builtins.formatting -- to setup formatters
		local diagnostics = null_ls.builtins.diagnostics -- to setup linters

		-- list of formatters & linters for mason to install
		require("mason-null-ls").setup({
			ensure_installed = {
				"stylua", -- lua formatter
				"black", -- python formatter
				"shfmt", -- bash foramtter
			},
			-- auto-install configured formatters & linters (with null-ls)
			automatic_installation = true,
		})

		NullSources = {
			formatting.stylua,
			formatting.shfmt.with({ args = { "-i", "2" } }),
			formatting.terraform_fmt,
		}
	end,
}
