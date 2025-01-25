-- Disable netrw for nvim-tree
vim.g.loaded_netrw       = 1
vim.g.loaded_netrwPlugin = 1

return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		-- follow the links in the docs for file tree icons
		-- https://github.com/nvim-tree/nvim-tree.lua?tab=readme-ov-file#requirements
		-- install a NerdFont (ubuntu): https://medium.com/@almatins/install-nerdfont-or-any-fonts-using-the-command-line-in-debian-or-other-linux-f3067918a88c
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup {}
	end,
}

