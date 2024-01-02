local plugins = {
  {
        "williamboman/mason.nvim",
    opts = function()
      require "custom.configs.mason"
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end
  },


  -- disabled plugins
  {
    "folke/which-key.nvim",
    enabled = false,
  }
}

return plugins
