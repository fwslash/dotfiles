local plugins = {
  {
    -- Autosave
    'Pocco81/auto-save.nvim',
    lazy = false,
    config = function()
      require("auto-save").setup {
        enabled = true
      }
    end
  },
  {
    --Nerd tree git changes
    'Xuyuanp/nerdtree-git-plugin',
    lazy = false
  }
}

return plugins
