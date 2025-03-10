-- NEOVIM OPTIONS
vim.opt.number         = true
vim.opt.relativenumber = true
vim.opt.tabstop        = 2
vim.opt.shiftwidth     = 2
vim.opt.expandtab      = true
vim.opt.hlsearch       = false
vim.opt.ignorecase     = true
vim.opt.smartcase      = true
vim.opt.scrolloff      = 8
vim.opt.termguicolors  = true  -- optionally enable 24-bit colour
vim.g.mapleader        = " "

local keymap = vim.keymap.set

-- BUFFER NAVIGATION KEYMAPS
keymap("n", "j", "gj")
keymap("n", "k", "gk")
keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "<C-u>", "<C-u>zz")

-- BUFFER MANAGEMENT KEYMAPS
keymap("n", "H", ":bprevious<CR>")
keymap("n", "L", ":bnext<CR>")
keymap("n", "<Leader>di", ":bdelete<CR>")

-- WINDOW KEYMAPS
keymap("n", "<A-v>", ":vsplit<CR>")      -- create new window (split vertically)
keymap("n", "<A-s>", ":split<CR>")       -- create new window (split horizontally)
keymap("n", "<A-q>", ":close<CR>")       -- close focused window (does not delete active buffer)
keymap("n", "<A-w>", ":set wrap!<CR>")   -- toggle line wrapping
keymap("n", "<A-->", ":vert res -5<CR>") -- decrease window size vertically by 5 units
keymap("n", "<A-=>", ":vert res +5<CR>") -- increase window size vertically by 5 units
keymap("n", "<A-_>", ":hor res -5<CR>")  -- decrease window size horizontally by 5 units
keymap("n", "<A-+>", ":hor res +5<CR>")  -- increase window size horizontally by 5 units
keymap("n", "<A-m>", "<C-w>=")           -- reset all windows to equal size
keymap("n", "<C-h>", "<C-w>h")           -- move focus to leftwards window
keymap("n", "<C-l>", "<C-w>l")           -- move focus to rightwards window
keymap("n", "<C-j>", "<C-w>j")           -- move focus to downwards window
keymap("n", "<C-k>", "<C-w>k")           -- move focus to upwards window

-- YANK/PASTE KEYMAPS
keymap("n", "<leader>y", "\"+y")
keymap("n", "<leader>p", "\"+p")
keymap("v", "<leader>y", "\"+y")
keymap("v", "<leader>p", "\"+p")

-- FILE TREE KEYMAPS
keymap("n", "<A-1>", ":NvimTreeFindFileToggle<CR>")

-- MISC KEYMAPS
keymap("n", "<A-C-q>", ":quitall<CR>") -- close all windows and exit neovim

-- VSCODE NEOVIM EXTENSION COMMMANDS
if vim.g.vscode then
  keymap("n", "H", function() vim.fn.VSCodeNotify("workbench.action.previousEditor") end)
  keymap("n", "L", function() vim.fn.VSCodeNotify("workbench.action.nextEditor") end)
  keymap("n", "<C-h>", function() vim.fn.VSCodeNotify("workbench.action.navigateLeft") end)
  keymap("n", "<C-l>", function() vim.fn.VSCodeNotify("workbench.action.navigateRight") end)
  keymap("n", "<C-j>", function() vim.fn.VSCodeNotify("workbench.action.navigateDown") end)
  keymap("n", "<C-k>", function() vim.fn.VSCodeNotify("workbench.action.navigateUp") end)

  keymap("n", "<Leader>di", function() vim.fn.VSCodeNotify("workbench.action.closeActiveEditor") end)
  keymap("n", "<Leader>da", function() vim.fn.VSCodeNotify("workbench.action.closeOtherEditors") end)
  keymap("n", "<Leader>dp", function() vim.fn.VSCodeNotify("workbench.action.closeEditorsInGroup") end)
  keymap("n", "<Leader>D", function() vim.fn.VSCodeNotify("workbench.action.closeEditorsToTheRight") end)
  keymap("n", "<Leader>du", function() vim.fn.VSCodeNotify("workbench.action.reopenClosedEditor") end)
  keymap("n", "<Leader>e", function() vim.fn.VSCodeNotify("workbench.action.focusSideBar") end)
  keymap("n", "<Leader>f", function() vim.fn.VSCodeNotify("workbench.files.action.showActiveFileInExplorer") end)
  keymap("n", "<Leader>v", function() vim.fn.VSCodeNotify("workbench.action.splitEditorRight") end)
  keymap("n", "<Leader>s", function() vim.fn.VSCodeNotify("workbench.action.splitEditorDown") end)

  keymap("n", "]d", function() vim.fn.VSCodeNotify('editor.action.marker.next') end)
  keymap("n", "[d", function() vim.fn.VSCodeNotify('editor.action.marker.prev') end)
  keymap("n", "gm", function() vim.fn.VSCodeNotify('editor.action.goToImplementation') end)

  return
end

-- PLUGIN MANAGER SETUP
require("config.lazy")

