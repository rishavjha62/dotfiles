-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

vim.keymap.set("n", "<leader>nh", "<cmd>nohlsearch<CR>", { desc = "Remove Highlights" })

-- buffers
vim.keymap.set("n", "<leader>n", "<cmd>bn<CR>", { desc = "Jumpt to next buffer" })
vim.keymap.set("n", "<leader>p", "<cmd>bp<CR>", { desc = "Jumpt to previous buffer" })
vim.keymap.set("n", "<leader>x", "<cmd>bd<CR>", { desc = "Close current buffer" })

-- yank to clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank to system clipboard" })

--increment/decrement numbers
-- vim.keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
-- vim.keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
-- vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- stolen from Primagen

-- Move selected block down and re-indent
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected block down" })

-- Move selected block up and re-indent
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected block up" })

-- Join lines but keep cursor in place
-- Default "J" moves cursor to start of joined line; this keeps it where it was
vim.keymap.set("n", "J", "mzJ`z", { desc = "Join lines without moving cursor" })

-- Half-page down but keep cursor centered
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down and center cursor" })

-- Half-page up but keep cursor centered
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up and center cursor" })

-- Next search result centered and unfolded
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search result centered" })

-- Previous search result centered and unfolded
vim.keymap.set("n", "N", "Nzzzv", { desc = "Prev search result centered" })

-- Format a paragraph (`=ap`) but restore cursor to original position
vim.keymap.set("n", "=ap", "ma=ap'a", { desc = "Format paragraph without losing cursor" })

-- Paste over selection without overwriting unnamed register
vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "Paste without yanking replaced text" })

-- Quick substitute word under cursor (global, case-insensitive, interactive)
vim.keymap.set(
  "n",
  "<leader>r",
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "Substitute word under cursor" }
)
