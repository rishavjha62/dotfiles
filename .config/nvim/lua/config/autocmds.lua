-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

--------------
-- obsidian --
--------------
--
-- >>> oo # from shell, navigate to vault (optional)
--
-- # NEW NOTE
-- >>> on "Note Name" # call my "obsidian new note" shell script (~/bin/on) -> sim linked to my-dev-env git repo
-- >>>
-- >>> ))) <leader>on # inside vim now, format note as template
-- >>> ))) # add tag, e.g. fact / blog / video / etc..
-- >>> ))) # add hubs, e.g. [[python]], [[machine-learning]], etc...
-- >>> ))) <leader>of # format title
--
-- # END OF DAY/WEEK REVIEW
-- >>> or # review notes in inbox
-- >>>
-- >>> ))) <leader>ok # inside vim now, move to zettelkasten >>> ))) <leader>odd # or delete
-- >>>
-- >>> og # organize saved notes from zettelkasten into notes/[tag] folders
-- >>> ou # sync local with Notion

local lazy = require("lazyvim.util").lazy_require({
  telescope = "telescope.builtin",
})

-- navigate to vault
vim.keymap.set("n", "<leader>oo", ":cd /home/risjha/programming/my-notes<cr>", { desc = "Navigate to notes vault" })
--
-- convert note to template and remove leading white space
vim.keymap.set(
  "n",
  "<leader>on",
  ":ObsidianTemplate note<cr> :lua vim.cmd([[1,/^\\S/s/^\\n\\{1,}//]])<cr>",
  { desc = "Insert template" }
)

-- strip date from note title and replace dashes with spaces
-- must have cursor on title
vim.keymap.set("n", "<leader>of", ":s/\\(# \\)[^_]*_/\\1/ | s/-/ /g<cr>", { desc = "Format Title" })
--
-- search for files in full vault
local my_path = "/home/risjha/programming/my-notes/notes"
-- vim.keymap.set("n", "<leader>os", ":Telescope find_files search_dirs={'my_path'}<cr>")
-- vim.keymap.set("n", "<leader>oz", ":Telescope live_grep search_dirs={'my_path'}<cr>")

vim.keymap.set("n", "<leader>os", function()
  lazy.telescope.find_files({ search_dirs = { my_path } })
end, { desc = "Find files in my notes vault" })

vim.keymap.set("n", "<leader>oz", function()
  lazy.telescope.live_grep({ search_dirs = { my_path } })
end, { desc = "Grep in my notes vault" })

--
-- search for files in notes (ignore zettelkasten)
-- vim.keymap.set("n", "<leader>ois", ":Telescope find_files search_dirs={\"/Users/alex/library/Mobile\\ Documents/iCloud~md~obsidian/Documents/ZazenCodes/notes\"}<cr>")
-- vim.keymap.set("n", "<leader>oiz", ":Telescope live_grep search_dirs={\"/Users/alex/library/Mobile\\ Documents/iCloud~md~obsidian/Documents/ZazenCodes/notes\"}<cr>")
--
-- for review workflow
-- move file in current buffer to zettelkasten folder
vim.keymap.set(
  "n",
  "<leader>ok",
  ":!mv '%:p' /home/risjha/programming/my-notes/zettelkasten<cr>:bd<cr>",
  { desc = "Move file in current buffer to zettelkasten folder" }
)
-- delete file in current buffer
vim.keymap.set("n", "<leader>odd", ":!rm '%:p'<cr>:bd<cr>", { desc = "Delete File in current buffer" })

-- Added for .tf terraform files
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*.tf",
  callback = function()
    vim.bo.filetype = "terraform"
  end,
})
