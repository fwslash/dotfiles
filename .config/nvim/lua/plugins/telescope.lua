local is_unix = vim.fn.has("unix") == 1 or vim.fn.has("mac") == 1
return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
			enabled = is_unix,
		},
		"nvim-lua/plenary.nvim",
	},
	cmd = { "Telescope" },
	init = function()
		-- See :help telescope.builtin
		vim.keymap.set("n", "<leader>?", "<cmd>Telescope oldfiles<cr>")
		vim.keymap.set("n", "<leader><space>", "<cmd>Telescope buffers<cr>")
		vim.keymap.set("n", "<leader>fa", "<cmd>Telescope find_files<cr>")
		vim.keymap.set("n", "<leader>fhf", "<cmd>Telescope find_files hidden=true<cr>")
		vim.keymap.set("n", "<leader>ff", "<cmd>Telescope git_files<cr>")
		vim.keymap.set("n", "<leader>fhg", "<cmd>Telescope live_grep hidden=true<cr>")
		vim.keymap.set("n", "<leader>fd", "<cmd>Telescope diagnostics<cr>")
		vim.keymap.set("n", "<leader>fs", "<cmd>Telescope current_buffer_fuzzy_find<cr>")
	end,
	config = function()
		require("telescope").load_extension("fzf")
	end,
}
