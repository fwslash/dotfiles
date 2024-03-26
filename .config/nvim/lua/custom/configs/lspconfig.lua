local configs = require("plugins.configs.lspconfig")
local on_attach = configs.on_attach
local capabilities = configs.capabilities

local lspconfig = require("lspconfig")

local servers = {"kotlin_language_server", "rust_analyzer", "jdtls", "bashls", "pylsp" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig["groovyls"].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    cmd = {"/usr/bin/java", "-jar", "/Users/karlo.bartolic/.local/share/nvim/mason/packages/groovy-language-server/build/libs/groovy-language-server-all.jar"}
}
