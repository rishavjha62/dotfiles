return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    -- Remove time from lualine_z
    opts.sections.lualine_z = {} -- clears bottom-right entirely
    -- OR if you want something else there, replace with:
    -- opts.sections.lualine_z = { "location" }
  end,
}
