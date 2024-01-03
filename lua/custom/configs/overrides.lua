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

return M
