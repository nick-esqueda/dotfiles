vim.g.mapleader = " "

local keymap = vim.keymap.set
keymap("n", "j", "gj")
keymap("n", "k", "gk")
keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "<C-u>", "<C-u>zz")
keymap("n", "<leader>y", "\"+y")
keymap("n", "<leader>p", "\"+p")
keymap("v", "<leader>y", "\"+y")
keymap("v", "<leader>p", "\"+p")

if vim.g.vscode then
  -- VSCode extension commmands
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
else
  -- ordinary Neovim
end

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.hlsearch = false
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.scrolloff = 8

