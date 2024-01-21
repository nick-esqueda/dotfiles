vim.g.mapleader = " "

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<leader>y", "\"*y")
vim.keymap.set("n", "<leader>p", "\"*p")
vim.keymap.set("v", "<leader>y", "\"*y")
vim.keymap.set("v", "<leader>p", "\"*p")

if vim.g.vscode then
  -- VSCode extension commmands
  vim.keymap.set("n", "H", function() vim.fn.VSCodeNotify("workbench.action.previousEditor") end)
  vim.keymap.set("n", "L", function() vim.fn.VSCodeNotify("workbench.action.nextEditor") end)
  vim.keymap.set("n", "<C-h>", function() vim.fn.VSCodeNotify("workbench.action.navigateLeft") end)
  vim.keymap.set("n", "<C-l>", function() vim.fn.VSCodeNotify("workbench.action.navigateRight") end)
  vim.keymap.set("n", "<C-j>", function() vim.fn.VSCodeNotify("workbench.action.navigateDown") end)
  vim.keymap.set("n", "<C-k>", function() vim.fn.VSCodeNotify("workbench.action.navigateUp") end)
  vim.keymap.set("n", "<Leader>H", function() vim.fn.VSCodeNotify("workbench.action.moveEditorLeftInGroup") end)
  vim.keymap.set("n", "<Leader>L", function() vim.fn.VSCodeNotify("workbench.action.moveEditorRightInGroup") end)
  vim.keymap.set("n", "<Leader><C-h>", function() vim.fn.VSCodeNotify("workbench.action.moveEditorToLeftGroup") end)
  vim.keymap.set("n", "<Leader><C-l>", function() vim.fn.VSCodeNotify("workbench.action.moveEditorToRightGroup") end)
  vim.keymap.set("n", "<Leader><C-j>", function() vim.fn.VSCodeNotify("workbench.action.moveEditorToBelowGroup") end)
  vim.keymap.set("n", "<Leader><C-k>", function() vim.fn.VSCodeNotify("workbench.action.moveEditorToAboveGroup") end)

  vim.keymap.set("n", "<Leader>di", function() vim.fn.VSCodeNotify("workbench.action.closeActiveEditor") end)
  vim.keymap.set("n", "<Leader>da", function() vim.fn.VSCodeNotify("workbench.action.closeOtherEditors") end)
  vim.keymap.set("n", "<Leader>dp", function() vim.fn.VSCodeNotify("workbench.action.closeEditorsInGroup") end)
  vim.keymap.set("n", "<Leader>D", function() vim.fn.VSCodeNotify("workbench.action.closeEditorsToTheRight") end)
  vim.keymap.set("n", "<Leader>du", function() vim.fn.VSCodeNotify("workbench.action.reopenClosedEditor") end)
  vim.keymap.set("n", "<Leader>e", function() vim.fn.VSCodeNotify("workbench.action.focusSideBar") end)
  vim.keymap.set("n", "<Leader>f", function() vim.fn.VSCodeNotify("workbench.files.action.showActiveFileInExplorer") end)
  vim.keymap.set("n", "<Leader>v", function() vim.fn.VSCodeNotify("workbench.action.splitEditorRight") end)
  vim.keymap.set("n", "<Leader>s", function() vim.fn.VSCodeNotify("workbench.action.splitEditorDown") end)
  vim.keymap.set("n", "<Leader>m", function() vim.fn.VSCodeNotify("workbench.action.toggleEditorWidths") end)

  vim.keymap.set("n", "gm", function() vim.fn.VSCodeNotify('editor.action.goToImplementation') end)
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

