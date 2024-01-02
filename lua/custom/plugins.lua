local plugins = {
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = function()
      return require "custom.configs.mason"
    end,
  },
  {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    opts = function()
      return require "custom.configs.conform"
    end,
  },
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    init = function()
      require("core.utils").lazy_load "harpoon"
    end,
    config = function()
      require "custom.configs.harpoon"
    end,
  },
  {
    "mfussenegger/nvim-lint",
    config = function()
      require "custom.configs.lint"
    end,
  },
  {
    "github/copilot.vim",
    cmd = "Copilot",
    init = function()
      require("core.utils").lazy_load "copilot.vim"
    end,
  },
  {
    "eandrju/cellular-automaton.nvim",
    cmd = "CellularAutomaton",
  },

  -- disabled plugins
  {
    "folke/which-key.nvim",
    enabled = false,
  },
}

return plugins
