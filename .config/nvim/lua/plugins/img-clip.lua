Plugin = {"HakonHarnes/img-clip.nvim"}


function Plugin.config()
    vim.keymap.set('n', '<leader>p', '<cmd>PasteImage<cr>')
    vim.keymap.set('n', '<leader>lp', ':lua require("img-clip").paste_image({ use_absolute_path = false, dir_path = "./screenshots" }) <cr>') 
    event="VeryLazy"
    local img_clip = require("img-clip")
    img_clip.setup({
        default = {
            dir_path = "~/Pictures/screenshots/"
        }
    })

end

return Plugin
