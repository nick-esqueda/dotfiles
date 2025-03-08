-- Docs: https://github.com/hrsh7th/nvim-cmp
-- Sample config: https://www.reddit.com/r/neovim/comments/18t4a0l/configuring_nvimcmp_using_lazy_plugin_manager/

return {
  {
    "hrsh7th/nvim-cmp", 
    dependencies = { "saadparwaiz1/cmp_luasnip", },
    config = require("plugins.overrides.autocompletion").cmpsetup,
  },
  { "hrsh7th/cmp-buffer",  },
  { "hrsh7th/cmp-path",  },
  { "hrsh7th/cmp-cmdline",  },
  { "hrsh7th/cmp-nvim-lua", },
}

