-- return {
--   "christoomey/vim-tmux-navigator", -- tmux & split window navigation
-- }
--
return {
  "christoomey/vim-tmux-navigator",
  lazy = false,
  keys = {
    { "<C-h>", "<cmd>TmuxNavigateLeft<cr>", desc = "Go to left pane" },
    { "<C-j>", "<cmd>TmuxNavigateDown<cr>", desc = "Go to lower pane" },
    { "<C-k>", "<cmd>TmuxNavigateUp<cr>", desc = "Go to upper pane" },
    { "<C-l>", "<cmd>TmuxNavigateRight<cr>", desc = "Go to right pane" },
    { "<C-\\>", "<cmd>TmuxNavigatePrevious<cr>", desc = "Go to previous pane" },
  },
  cond = function()
    return os.getenv("TMUX") ~= nil
  end,
  event = "VeryLazy",
}
