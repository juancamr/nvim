---@type MappingsTable
--
local M = {}

M.general = {
  n = {
    ["<leader>q"] = { "<cmd>q<CR>" },
    ["<C-z>"] = { "<nop>" },
    ["<C-d>"] = { "<C-d>zz" },
    ["<C-u>"] = { "<C-u>zz" },
    ["<leader>mr"] = { "<cmd>CellularAutomaton make_it_rain<CR>" },
    ["<leader>u"] = { "<cmd>UndotreeToggle<CR>" },
    ["<leader>l"] = { "aconsole.log()<Esc>i" },
    ["<leader>pv"] = { "<cmd>NvimTreeToggle<CR>" },
    ["<leader>vpp"] = { "<cmd>e ~/.config/nvim/lua/custom/plugins.lua<CR>" },
    ["<C-f>"] = { "<cmd>silent !tmux neww ~/bin/.local/scripts/tmux-sessionizer<CR>" },
    ["<leader>gs"] = { "<cmd>top Git<CR>" },
    [";"] = { ":" },
    ["<leader>re"] = {
      function()
        require("nvchad.renamer").open()
      end,
      "LSP rename",
    },
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
    ["<C-v>"] = { "<C-r>+", opts = { noremap = true } },
  },
}

M.telescope = {
  n = {
    ["<C-p>"] = { "<cmd> Telescope find_files <CR>", "Find files" },
    ["<leader>ps"] = { "<cmd> Telescope live_grep <CR>", "Live grep" },
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

M.disabled = {
  n = {
    --telescope mappings
    ["<leader>ff"] = "",
    ["<leader>fm"] = "",
    ["<leader>fa"] = "",
    ["<leader>fw"] = "",
    ["<leader>fb"] = "",
    ["<leader>fh"] = "",
    ["<leader>fo"] = "",
    ["<leader>fz"] = "",

    --lspconfig mappings
    ["<leader>wa"] = "",
    ["<leader>wr"] = "",
    ["<leader>wl"] = "",

    ["<leader>ls"] = "",
    ["<leader>lf"] = "",

    -- default saved keymap
    ["<C-s>"] = "",

    -- motion in panes
    ["<C-k>"] = "",
    ["<C-j>"] = "",
    ["<C-l>"] = "",

    -- unmap nvterm
    ["<leader>h"] = "",
    ["<leader>v"] = "",
  },
}

return M
