return {
	"catppuccin/nvim",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			color_overrides = {
				all = {
					flamingo = "#ffe1a8",
					pink = "#e26d5c",
				},
			},
		})
		vim.cmd.colorscheme("catppuccin-mocha")
	end,
}
