---@type ChadrcConfig
local M = {}

M.ui = { 
    theme = 'kanagawa',
    changed_themes = {
        kanagawa = {
            base_16 = {
                base00 = "#322f30"
            },
            base_30 = {
                black = "#322f30",
                grey_fg = "#777a80",
                grey = "#777a80"

            }
        }
    }        
}

M.plugins = "custom.configs.plugins"
M.mappings = require("custom.configs.mappings")

return M

