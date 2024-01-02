local M = {}

M.general = {
  n = {
    ["<leader>q"] = { "<cmd>q<CR>" },
    ["<C-z>"] = { "<nop>" },
    ["<C-d>"] = { "<C-d>zz" },
    ["<C-u>"] = { "<C-u>zz" },
    ["<leader>f"] = {
      function()
        require("conform").format { async = true, lsp_fallback = true }
      end,
    },
    ["<leader>mr"] = { "<cmd>CellularAutomaton make_it_rain<CR>" },
  },

  x = {
    ["p"] = { 'p:let @+=@0<CR>:let @"=@0<CR>', "Dont copy replaced text", opts = { silent = true } },
  },

  v = {
    ["<leader>y"] = { '"+y' },
  },

  i = {
    ["<C-c>"] = { "<Esc>" },
  },
}

M.nvimtree = {
  plugin = true,

  n = {
    ["<leader>pv"] = { "<cmd> NvimTreeFocus <CR>", "Focus nvimtree" },
    ["<C-b>"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },
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
    ["<C-s>"] = {
      function()
        require("harpoon"):list():select(4)
      end,
    },
  },
}

return M
