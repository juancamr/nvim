local opts = {
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "ruff_format" },
    javascript = { "eslint_d" },
    typescript = { "eslint_d" },
  },
  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return opts
