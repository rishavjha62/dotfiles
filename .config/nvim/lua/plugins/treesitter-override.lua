return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- Extend or modify the default opts safely

    -- Enable incremental selection
    opts.incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "<Leader>ss",
        node_incremental = "<Leader>si",
        scope_incremental = "<Leader>sc",
        node_decremental = "<Leader>sd",
      },
    }

    -- Enable textobjects selection
    opts.textobjects = opts.textobjects or {}
    opts.textobjects.select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
        ["as"] = { query = "@local.scope", query_group = "locals", desc = "Select language scope" },
      },
      selection_modes = {
        ["@parameter.outer"] = "v",
        ["@function.outer"] = "V",
        ["@class.outer"] = "<c-v>",
      },
      include_surrounding_whitespace = true,
    }

    return opts
  end,
}
