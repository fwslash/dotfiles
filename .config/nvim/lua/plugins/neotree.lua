return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	opts = {
		window = { auto_expand_width = true },
	},
	cmd = { "Neotree" },
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
	},
	init = function()
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1
	end,
	config = function()
		require("neo-tree").setup({
			window = { auto_expand_width = true },
			event_handlers = {
				{
					event = "neo_tree_buffer_enter",
					handler = function(arg)
						vim.cmd([[setlocal relativenumber]])
					end,
				},
			},
		})
	end,
}
