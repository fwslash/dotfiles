return {
	"nvim-treesitter/nvim-treesitter",
	opts = {
		auto_install = false,
		sync_install = false,
		highlight = {
			enable = true,
		},
		autopairs = {
			enable = true,
		},
		-- :help nvim-treesitter-textobjects-modules
		textobjects = {
			select = {
				enable = true,
				lookahead = true,
				keymaps = {
					["af"] = "@function.outer",
					["if"] = "@function.inner",
					["ac"] = "@class.outer",
					["ic"] = "@class.inner",
				},
			},
		},
		ensure_installed = {
			"vim",
			"vimdoc",
			"lua",
			"python",
			"groovy",
			"kotlin",
			"hcl",
			"terraform",
			"bash",
			"go",
			"java",
			"markdown",
			"javascript",
			"typescript",
			"tsx",
		},
	},
	main = "nvim-treesitter.configs",
	dependencies = {
		{ "nvim-treesitter/nvim-treesitter-textobjects" },
	},
}
