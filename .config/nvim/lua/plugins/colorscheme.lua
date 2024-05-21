local Plugin = {"catppuccin/nvim", name = "catppuccin", priority = 1000,
    config = function()
        require("catppuccin").setup({
            flavour = "frappe"
        })

        vim.cmd.colorscheme "catppuccin"
    end
}

Plugin.opts = {
    material_theme_style = 'palenight'
}

return Plugin
