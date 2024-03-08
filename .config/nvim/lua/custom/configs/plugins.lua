local overrides = require("custom.configs.overrides")

local plugins = {
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.configs.lspconfig"
        end,
    },
    {
        "nvim-java/nvim-java",
        dependencies = {
            'nvim-java/lua-async-await',
            'nvim-java/nvim-java-core',
            'nvim-java/nvim-java-test',
            'nvim-java/nvim-java-dap',
            'MunifTanjim/nui.nvim',
            'neovim/nvim-lspconfig',
            'mfussenegger/nvim-dap',
            {
                'williamboman/mason.nvim',
                opts = {
                    registries = {
                        'github:nvim-java/mason-registry',
                        'github:mason-org/mason-registry',
                    },
                },
            }
        }
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
    },
    {
        'christoomey/vim-tmux-navigator',
        lazy = false
    },
    {
        "nvim-tree/nvim-tree.lua",
        opts = overrides.nvimtree,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "vim",
                "lua",
                "html",
                "css",
                "javascript",
                "typescript",
                "tsx",
                "regex",
                "json",
                "markdown",
                "java",
                "dockerfile",
                "python",
                "terraform",
                "yaml",
                "c",
                "rust",
                "bash"
            }
        }
    }
}


return plugins
