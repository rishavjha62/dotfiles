-- return {
--   "rose-pine/neovim",
--   name = "rose-pine",
--   config = function()
--     require("rose-pine").setup({
--       extend_background_behind_borders = true,
--       styles = {
--         transparency = true,
--       },
--     })
--     vim.cmd("colorscheme rose-pine")
--   end,
-- }

return {
  "rose-pine/neovim",
  name = "rose-pine",
  config = function()
    require("rose-pine").setup({
      extend_background_behind_borders = true,
      styles = {
        transparency = true,
      },
    })

    vim.cmd("colorscheme rose-pine")

    -- Fix transparency for ALL windows (active + inactive)
    local transparent_groups = {
      "Normal",
      "NormalNC",
      "NormalFloat",
      "SignColumn",
      "EndOfBuffer",
      "MsgArea",
      "FloatBorder",
    }

    for _, group in ipairs(transparent_groups) do
      local ok, hl = pcall(vim.api.nvim_get_hl, 0, { name = group })
      if ok then
        vim.api.nvim_set_hl(0, group, {
          fg = hl.fg,
          bg = "none",
        })
      end
    end
  end,
}

--

-- return {
--   "mellow-theme/mellow.nvim",
--   name = "mellow",
--   lazy = false, -- make sure it loads immediately
--   priority = 1000, -- load before other plugins
--   config = function()
--     -- Load the theme
--     vim.cmd.colorscheme("mellow")
--
--     -- Example: make background transparent
--     vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--     vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
--     vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
--
--     -- Example: set float borders to rounded and transparent
--     vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
--   end,
-- }

-- return {
--   "mellow-theme/mellow.nvim",
--   name = "mellow",
--   lazy = false, -- load immediately
--   priority = 1000, -- load before other plugins
--   config = function()
--     -- Load the theme first
--     vim.cmd.colorscheme("mellow")
--
--     -- Make background fully transparent (active + inactive windows)
--     local transparent_groups = {
--       "Normal",
--       "NormalNC",
--       "NormalFloat",
--       "SignColumn",
--       "EndOfBuffer",
--       "MsgArea",
--       "TelescopeNormal",
--       "TelescopeBorder",
--       "TelescopePromptNormal",
--       "TelescopePromptBorder",
--       "TelescopeResultsNormal",
--       "TelescopeResultsBorder",
--       "FloatBorder",
--     }
--
--     for _, group in ipairs(transparent_groups) do
--       vim.api.nvim_set_hl(0, group, { bg = "none" })
--     end
--   end,
-- }
