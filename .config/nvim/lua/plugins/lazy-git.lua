local Plugin = {'kdheepak/lazygit.nvim'}

function Plugin.config()
end


Plugin.opts = {
    cmd = {
        "LazyGit",
        "LazyGitConfig",
        "LazyGitCurrentFile",
        "LazyGitFilter",
        "LazyGitFilterCurrentFile",
    },

    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    keys = {
        
    } 
}

return Plugin
