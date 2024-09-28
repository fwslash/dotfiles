return {
	"VonHeikemen/lsp-zero.nvim",
	branch = "v4.x",
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/nvim-cmp",
	},
	config = function()
		local lsp_zero = require("lsp-zero")

		local lsp_attach = function(client, bufnr)
			vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>", opts)
			vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", opts)
			vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>", opts)
			vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>", opts)
			vim.keymap.set("n", "go", "<cmd>lua vim.lsp.buf.type_definition()<cr>", opts)
			vim.keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<cr>", opts)
			vim.keymap.set("n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<cr>", opts)
			vim.keymap.set("n", "rn", "<cmd>lua vim.lsp.buf.rename()<cr>", opts)
			vim.keymap.set("n", "<F4>", "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)
		end

		lsp_zero.extend_lspconfig({
			sign_text = true,
			lsp_attach = lsp_attach,
			capabilities = require("cmp_nvim_lsp").default_capabilities(),
		})

		require("mason").setup({})
		require("mason-lspconfig").setup({
			ensure_installed = {
				"lua_ls",
				"bashls",
				"dockerls",
				"helm_ls",
				"gopls",
				"terraformls",
			},
			handlers = {
				function(server_name)
					require("lspconfig")[server_name].setup({
						autostart = false,
					})
				end,

				["lua_ls"] = function()
					require("lspconfig").lua_ls.setup({
						autostart = false,
						settings = {
							Lua = {
								diagnostics = {
									globals = { "vim", "opts" },
								},
							},
						},
					})
				end,
			},
		})
		local cmp = require('cmp')
		local cmp_action = require('lsp-zero').cmp_action()
		local cmp_format = require('lsp-zero').cmp_format({details = true})

		require('luasnip.loaders.from_vscode').lazy_load()

		cmp.setup({
			sources = {
				{name = 'nvim_lsp'},
				{name = 'luasnip'},
			},
			mapping = cmp.mapping.preset.insert({
				['<C-f>'] = cmp_action.luasnip_jump_forward(),
				['<C-b>'] = cmp_action.luasnip_jump_backward(),
			}),
			snippet = {
				expand = function(args)
					require('luasnip').lsp_expand(args.body)
				end,
			},
			--- (Optional) Show source name in completion menu
			formatting = cmp_format,
		})
  end
}
