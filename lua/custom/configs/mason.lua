local opts = {
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
  }
}

return opts
