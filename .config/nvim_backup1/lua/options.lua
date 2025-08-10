vim.cmd("let g:netrw_liststyle = 3") -- to make the default :Explore to tree format

vim.opt.number = true         -- to show the absolute line number
vim.opt.relativenumber = true -- to show the relative number

-- tabs and indentation 
vim.cmd("set expandtab") -- expand tab to spaces
vim.cmd("set tabstop=2") -- 2 space for tabs (prettier default)
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2") -- 2 spaces for indent width
vim.opt.autoindent = true     -- copy indent from current line when starting a new line


vim.opt.wrap = false

-- search settings
vim.opt.ignorecase = true  -- ignore case when searching 
vim.opt.smartcase = true  -- for mixed case, it will be case-insensitive
vim.opt.cursorline = true

--turn on termguicolors for colorscheme to works
vim.opt.termguicolors = true
vim.opt.background = "dark" -- colorschemes that can be light or dark will be made dark
vim.opt.signcolumn = "yes" -- show sign column so that text doesn't shifts

-- backspace 
vim.opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start positions

--clipboards

vim.opt.clipboard = "unnamedplus" -- use system clipboard as default reg sitter

-- split window 
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.inccommand = "split"
vim.opt.scrolloff = 999
vim.opt.virtualedit = "block"


