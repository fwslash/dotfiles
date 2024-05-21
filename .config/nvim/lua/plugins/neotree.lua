local Plugin = {'nvim-neo-tree/neo-tree.nvim'}

Plugin.branch = 'v3.x'

Plugin.opts = {
  window = { auto_expand_width = true } 
}

Plugin.lazy = false

Plugin.dependencies = {
  'nvim-lua/plenary.nvim',
  'MunifTanjim/nui.nvim',
}

function Plugin.init()
  -- disable netrw (neovim's default file explorer)
  vim.g.loaded_netrw = 1
  vim.g.loaded_netrwPlugin = 1
end

function Plugin.config()
  
  vim.keymap.set('n', '<leader>e', '<cmd>Neotree filesystem toggle<cr>')

  require('neo-tree').setup({
  window = { auto_expand_width = true },
  event_handlers = {{
          event = "neo_tree_buffer_enter",
          handler = function(arg)
            vim.cmd [[
              setlocal relativenumber
            ]]
          end,
        }},
  })
end

return Plugin
