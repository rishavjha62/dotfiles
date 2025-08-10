return {
  "folke/noice.nvim",
  opts = {
    lsp = {
      -- Enable rounded borders for hover/signature popups
      documentation = {
        border = "rounded",
      },
    },
    presets = {
      lsp_doc_border = true, -- this enables border on hover/signature help
    },
  },
}
