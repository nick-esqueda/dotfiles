-- Docs: https://github.com/epwalsh/obsidian.nvim?tab=readme-ov-file

vim.opt.conceallevel = 1 -- allow obsidian.nvim to conceal text (for links, etc.)

return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "personal",
        path = "~/notes",
      },
    },
  },
  -- Optional, completion of wiki links, local markdown links, and tags using nvim-cmp.
  completion = {
    -- Set to false to disable completion.
    nvim_cmp = true,
    -- Trigger completion at 2 chars.
    min_chars = 2,
  },
}

