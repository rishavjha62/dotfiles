-- lua/plugins/snacks.lua
return {
  "folke/snacks.nvim",
  opts = {
    explorer = {
      hidden = true, -- show hidden files in explorer
      ignored = true, -- show ignored files in explorer
    },
    picker = {
      hidden = true, -- global default for pickers
      ignored = true, -- global default for pickers
    },
  },
}
