-- for language server protocol configuration

-- return {
-- 	{
-- 		"williamboman/mason.nvim",
-- 		lazy = false,
-- 		config = function()
-- 			require("mason").setup()
-- 		end,
-- 	},
-- 	{
-- 		"williamboman/mason-lspconfig.nvim",
-- 		lazy = false,
-- 		opts = {
-- 			auto_install = true,
-- 		},
-- 		-- config = function()
-- 		-- require("mason-lspconfig").setup({
-- 		--    ensure_installed = { "zls", 'clangd', "lua_ls" },
-- 		--  })
-- 		-- end
-- 	},
-- 	{
-- 		"neovim/nvim-lspconfig",
-- 		lazy = false,
-- 		config = function()
-- 			local capabilities = require("cmp_nvim_lsp").default_capabilities()
-- 			local lspconfig = require("lspconfig")
-- 			lspconfig.zls.setup({
-- 				capabilities = capabilities,
-- 			})
-- 			lspconfig.lua_ls.setup({
-- 				capabilities = capabilities,
-- 			})
-- 			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
-- 			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
-- 			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
-- 		end,
-- 	},
-- }
--
-- new config for
return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",

		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		local mason_tool_installer = require("mason-tool-installer")

		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			-- list of servers for mason to install
			lazy = false,
			opts = {
				auto_install = true,
			},

			-- ensure_installed = {
			-- 	"tsserver",
			-- 	"html",
			-- 	"cssls",
			-- 	"tailwindcss",
			-- 	"svelte",
			-- 	"lua_ls",
			-- 	"graphql",
			-- 	"emmet_ls",
			-- 	"prismals",
			-- 	"pyright",
			-- },
		})
		mason_tool_installer.setup({
			ensure_installed = {
				"prettier", -- prettier formatter
				"stylua", -- lua formatter
				"isort", -- python formatter
				"black", -- python formatter
				"pylint", -- python linter
				"eslint_d", -- js linter
			},
		})
	end,
}
