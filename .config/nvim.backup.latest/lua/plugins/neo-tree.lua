-- for file tree veiwing configuration

return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	-- trying differnent items
	-- opts = {
	--  view = {
	--    relativeNumber = true,
	--  },
	--},
	-- end here
	--
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},

	config = function()
		require("neo-tree").setup({
			filesystem = {
				filtered_items = {
					visible = true, -- This is what you want: If you set this to `true`, all "hide" just mean "dimmed out"
					hide_dotfiles = false,
					hide_gitignored = false,
				},
			},
		})
		vim.keymap.set("n", "<leader>ee", ":Neotree filesystem toggle left<CR>", { desc = "Toggle file explorer" })
		vim.keymap.set(
			"n",
			"<leader>ef",
			":Neotree filesystem current toggle left<CR>",
			{ desc = "Toggle file explorer on current file" }
		)
		vim.keymap.set("n", "<leader>ec", ":Neotree filesystem close<CR>", { desc = "Collapse file explorer" })
	end,
}
