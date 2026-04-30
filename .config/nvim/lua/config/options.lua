-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- vim.cmd("let g:netrw_liststyle = 3") -- to make the default :Explore to tree format

vim.opt.number = true -- to show the absolute line number
vim.opt.relativenumber = true -- to show the relative number

-- tabs width and indentation
vim.opt.expandtab = true -- expand tab to spaces
vim.opt.tabstop = 4 -- 4 space for tabs (prettier default)
vim.opt.shiftwidth = 4 -- 4 spaces for indent width
vim.opt.softtabstop = 4

vim.opt.autoindent = true -- copy indent from current line when starting a new line

vim.opt.wrap = false -- removes line wrapping so lines are not skipped

-- search settings
vim.opt.ignorecase = true -- ignore case when searching
vim.opt.smartcase = true -- for mixed case, it will be case-insensitive
vim.opt.cursorline = true

--cursor settings
vim.opt.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250"

--turn on termguicolors for colorscheme to works
vim.opt.termguicolors = true
-- vim.opt.background = "dark" -- colorschemes that can be light or dark will be made dark
vim.opt.signcolumn = "yes" -- show sign column so that text doesn't shifts

-- backspace
vim.opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start positions

--clipboards

vim.opt.clipboard = "unnamedplus" -- use system clipboard as default reg sitter

-- split window
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.inccommand = "split"
vim.opt.scrolloff = 10
vim.opt.virtualedit = "block"

-- Store undos between session
vim.opt.undofile = true

-- enable mouse mode for spliting and other
vim.opt.mouse = "a"

-- hide the status line (insert, visual mode)
vim.opt.showmode = false

--Enable break indent
vim.opt.breakindent = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
-- vim.opt.list = true
-- vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

--setup diagnostics
-- vim.diagnostic.config({
--   virtual_text = true,
--   virtual_line = false,
-- })

--to allow UI features from /lua/plugin/obsidian.nvim
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.opt_local.conceallevel = 2
  end,
})

-- for adding borders to window
vim.opt.winborder = "rounded"

-- Add treesitter runtimepath
vim.opt.runtimepath:append(vim.fn.stdpath("data") .. "/site")

vim.lsp.set_log_level("error")
