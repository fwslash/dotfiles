local Plugin = {
	"nvim-lualine/lualine.nvim",
	event = "VeryLazy",
	init = function()
		vim.opt.showmode = false
	end,
	opts = {
		options = {
			theme = "auto",
			icons_enabled = true,
			component_separators = "|",
			section_separators = "",
			disabled_filetypes = {
				statusline = { "NvimTree" },
			},
		},
	},
}

return Plugin
