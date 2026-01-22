return {
  "mason-org/mason.nvim",
  opts = {
    ensure_installed = {
      "stylua",
      "shellcheck",
      "shfmt",
      "ruff", -- Python formatter and linter (includes import sorting)
      "pyright", -- Python LSP (autocomplete, go-to-definition, type checking)
      "prettier", -- For JS/TS/JSON/YAML/MD
    },
  },
}
