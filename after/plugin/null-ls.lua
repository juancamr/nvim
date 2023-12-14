local null_ls = require("null-ls")

null_ls.setup({
	sources = {
		-- lua
		null_ls.builtins.completion.spell,
		null_ls.builtins.formatting.stylua,

		-- python --
		null_ls.builtins.formatting.black, -- used explictily by ruff_lsp
		-- null_ls.builtins.diagnostics.mypy,

		-- javascript - typescript
		-- null_ls.builtins.code_actions.eslint,
		null_ls.builtins.diagnostics.eslint,
		null_ls.builtins.formatting.eslint,
	},
})

require("mason-null-ls").setup({
	ensure_installed = nil,
	automatic_installation = true,
})
