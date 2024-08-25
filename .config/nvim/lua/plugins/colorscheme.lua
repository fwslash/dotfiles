return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	opts = {
		material_theme_style = "palenight",
	},
	config = function()
		require("catppuccin").setup({
			flavour = "frappe",
		})

		vim.cmd.colorscheme("catppuccin")
	end,
}
