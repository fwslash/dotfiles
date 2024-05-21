local Plugin = {'Pocco81/auto-save.nvim'}

Plugin.opts = { 
	lazy = false,
	config = function()
		require("auto-save").setup {
			enabled = true
		}
	end
}

return Plugin
