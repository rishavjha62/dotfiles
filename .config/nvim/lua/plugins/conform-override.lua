return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "ruff_format" },
      go = { "gofumpt", "goimports" },
      ["_"] = { "prettier" },
    },
  },
}
