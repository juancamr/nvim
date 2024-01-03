local overrides = require "custom.configs.overrides"
local conformOpts = require "custom.configs.conform"

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
    opts = overrides.mason,
  },

  {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    opts = conformOpts,
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

  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup()
    end,
  },

  {
    "windwp/nvim-ts-autotag",
    init = function()
      require("core.utils").lazy_load "nvim-ts-autotag"
    end,
    config = function()
      require("nvim-ts-autotag").setup { enable = true }
    end,
  },

  {
    "mbbill/undotree",
    cmd = "UndotreeToggle",
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  -- disabled plugins
  {
    "folke/which-key.nvim",
    enabled = false,
  },
}

return plugins
