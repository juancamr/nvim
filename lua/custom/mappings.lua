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

return M
