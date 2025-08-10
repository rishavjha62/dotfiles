-- for colorscheme

return {
	"catppuccin/nvim",
	lazy = false,
	name = "catppuccin",
	priority = 1000,

	config = function()
		require("catppuccin").setup({
			transparent_background = true,
		})
		vim.cmd.colorscheme("catppuccin")
	end,
}

-- return {
-- 	"Yazeed1s/minimal.nvim",
-- 	lazy = false,
-- 	name = "Yazeed1s",
-- 	priority = 1000,
--
-- 	config = function()
-- 		vim.cmd.colorscheme("minimal")
-- 	end,
-- }

-- return {
-- 	"rebelot/kanagawa.nvim",
-- 	lazy = false,
-- 	config = function()
-- 		require("kanagawa").setup({
--
-- 			compile = true,
-- 			transparent = false,
-- 		})
-- 		vim.cmd("colorscheme kanagawa")
-- 	end,
-- 	build = function()
-- 		vim.cmd("KanagawaCompile")
-- 	end,
-- }
