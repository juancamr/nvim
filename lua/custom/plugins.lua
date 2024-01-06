local overrides = require "custom.configs.overrides"
local conformOpts = require "custom.configs.conform"

local plugins = {
  -- override plugins
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },
  {
    "hrsh7th/nvim-cmp",
    opts = overrides.cmp,
  },
  {
    "nvim-telescope/telescope.nvim",
    opts = overrides.telescope,
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
    lazy = false,
  },

  -- custom plugins
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

  -- disabled plugins
  {
    "folke/which-key.nvim",
    enabled = false,
  },
  {
    "windwp/nvim-autopairs",
    enabled = false,
  },
}

return plugins
