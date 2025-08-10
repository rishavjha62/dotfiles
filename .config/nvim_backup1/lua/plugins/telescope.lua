-- for fuzzy finder configuratrion

return {
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      local builtin = require("telescope.builtin")

      local telescope = require("telescope")
      local actions = require("telescope.actions")

      telescope.setup({
        defaults = {
          path_display = { "smart" },
          mappings = {
            i = {
              ["<C-k>"] = actions.move_selection_previous, -- move to prev result
              ["<C-j>"] = actions.move_selection_next, -- move to next result
              ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
            },
          },
        },
      })

      vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Fuzzy find file" })
      vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Fuzzy find recent files" })
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live grep throughout the project" })
      vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Live grep throughout the buffers" })
      vim.keymap.set("n", "<leader>fc", builtin.grep_string, { desc = "Find string under cursor in cwd" })
      vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Find fuzzy help" })
    end,
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        extension = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })
      require("telescope").load_extension("ui-select")
    end,
  },
}
