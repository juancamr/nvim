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
  {
    "tpope/vim-fugitive",
    cmd = "Git",
  },

  -- custom plugins
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
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require "custom.configs.lint"
    end,
  },
  {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    opts = conformOpts,
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
    "NvChad/nvterm",
    enabled = false,
  },
}

return plugins
