local M = {}
local cmp = require "cmp"

M.treesitter = {
  ensure_installed = {
    "lua",
    "python",
    "javascript",
    "typescript",
    "cpp",
    "astro",
  },
}

M.mason = {
  ensure_installed = {
    -- lsp servers
    "pyright",
    "typescript-language-server",
    "clangd",
    "astro-language-server",
    "lua-language-server",

    -- formatters
    "ruff",
    "stylua",
    "eslint_d",

    -- linters
  },
}

M.cmp = {
  mapping = {
    ["<C-y>"] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Insert,
      select = true,
    },
    ["<Tab>"] = {
      i = cmp.config.disable,
      c = cmp.config.disable,
    },
  },
}

M.telescope = {
  defaults = {
    mappings = {
      i = {
        ["<C-u>"] = false,
      },
    },
  },
}

M.nvimtree = {
  actions = {
    open_file = {
      quit_on_open = true,
    },
  },
}

return M
