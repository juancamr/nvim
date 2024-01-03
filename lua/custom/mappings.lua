---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["<leader>q"] = { "<cmd>q<CR>" },
    ["<C-z>"] = { "<nop>" },
    ["<C-d>"] = { "<C-d>zz" },
    ["<C-u>"] = { "<C-u>zz" },
    ["<C-s>"] = { "<cmd>w<CR>" },
    ["<leader>mr"] = { "<cmd>CellularAutomaton make_it_rain<CR>" },
    ["<leader>u"] = { "<cmd>UndotreeToggle<CR>" },
    ["<leader>l"] = { "aconsole.log()<Esc>i" },
  },

  x = {
    ["p"] = { 'p:let @+=@0<CR>:let @"=@0<CR>', "Dont copy replaced text", opts = { silent = true } },
  },

  v = {
    ["<leader>y"] = { '"+y' },
  },

  i = {
    ["<C-c>"] = { "<Esc>" },
    ["<C-s>"] = { "<C-c><cmd>w<CR>" },
  },
}

M.conform = {
  n = {
    ["<leader>f"] = {
      function()
        require("conform").format { async = true, lsp_fallback = true }
      end,
    },
  },
}

M.harpoon = {
  n = {
    ["<leader>a"] = {
      function()
        require("harpoon"):list():append()
      end,
    },
    ["<C-e>"] = {
      function()
        local harpoon = require "harpoon"
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end,
    },
    ["<C-h>"] = {
      function()
        require("harpoon"):list():select(1)
      end,
    },
    ["<C-t>"] = {
      function()
        require("harpoon"):list():select(2)
      end,
    },
    ["<C-n>"] = {
      function()
        require("harpoon"):list():select(3)
      end,
    },
    ["<C-m>"] = {
      function()
        require("harpoon"):list():select(4)
      end,
    },
  },
}

return M
