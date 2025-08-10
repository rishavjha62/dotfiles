-- return {
--   "christoomey/vim-tmux-navigator", -- tmux & split window navigation
-- }
--
return {
  "christoomey/vim-tmux-navigator",
  cond = function()
    return os.getenv("TMUX") ~= nil
  end,
  event = "VeryLazy",
}
