local M = {}

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
    ["<C-y>"] = require("cmp").mapping.confirm {
      behavior = require("cmp").ConfirmBehavior.Insert,
      select = true,
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

return M
