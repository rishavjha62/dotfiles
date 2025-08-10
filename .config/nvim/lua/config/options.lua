-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- vim.cmd("let g:netrw_liststyle = 3") -- to make the default :Explore to tree format

vim.opt.number = true -- to show the absolute line number
vim.opt.relativenumber = true -- to show the relative number

-- tabs width and indentation
vim.cmd("set expandtab") -- expand tab to spaces
vim.cmd("set tabstop=4") -- 4 space for tabs (prettier default)
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4") -- 4 spaces for indent width
vim.opt.autoindent = true -- copy indent from current line when starting a new line

vim.opt.wrap = false -- removes line wrapping so lines are not skipped

-- search settings
vim.opt.ignorecase = true -- ignore case when searching
vim.opt.smartcase = true -- for mixed case, it will be case-insensitive
vim.opt.cursorline = true

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

--Keep Signcolumn on by default
vim.opt.signcolumn = "yes"

--case-insensitive searching Unless \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
-- vim.opt.list = true
-- vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

--Highlight text for some time after yanking
vim.api.nvim_create_autocmd("TextYankPost", {
  group = vim.api.nvim_create_augroup("YankHighlight", { clear = true }),
  pattern = "*",
  callback = function()
    vim.highlight.on_yank()
  end,
  desc = "Highlight yank",
})

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
