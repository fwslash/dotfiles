local load = function(mod)
  package.loaded[mod] = nil
  require(mod)
end

load('user.settings')
load('user.commands')
load('user.keymaps')
load('user.nvim-exec')
require('user.plugins')

--pcall(vim.cmd.colorscheme, 'material')
