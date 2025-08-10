-- lua/plugins/configs/obsidian.lua
local util = require("obsidian").util

return {
  workspaces = {
    { name = "my-notes", path = "/home/risjha/programming/my-notes" },
  },
  notes_subdir = "inbox",
  new_notes_location = "notes_subdir",
  disable_frontmatter = true,
  templates = {
    subdir = "templates",
    date_format = "%Y-%m-%d",
    time_format = "%H:%M",
  },
  mappings = {
    ["gf"] = { action = util.gf_passthrough, opts = { noremap = false, expr = true, buffer = true } },
    ["<leader>ti"] = { action = util.toggle_checkbox, opts = { buffer = true } },
  },
  completion = { nvim_cmp = false, blink = true, min_chars = 2 },
  ui = { enable = false },
}
