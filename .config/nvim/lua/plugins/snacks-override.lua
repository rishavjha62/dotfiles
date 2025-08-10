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
      sources = {
        files = {
          hidden = true, -- explicitly override default hidden behavior
          ignored = true, -- explicitly include ignored files
        },
        explorer = {
          hidden = true,
          ignored = true,
        },
        grep = {
          hidden = true,
          ignored = true,
        },
        grep_word = {
          hidden = true,
          ignored = true,
        },
        grep_buffers = {
          hidden = true,
          ignored = true,
        },
      },
    },
  },
}
