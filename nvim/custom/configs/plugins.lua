local plugins = {
  {
    "neovim/nvim-lspconfig",
    config = function()
        require "plugins.configs.lspconfig"
        require "custom.configs.lspconfig"
    end,
  },
  {
    -- Autosave
    'Pocco81/auto-save.nvim',
    lazy = false,
    config = function()
      require("auto-save").setup {
        enabled = true
      }
    end
  }
}

return plugins
