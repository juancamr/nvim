local lsp_zero = require("lsp-zero")
local cmp = require("cmp")
local keymap = vim.keymap

lsp_zero.on_attach(function(client, bufnr)
	local opts = { buffer = bufnr, remap = false }

	keymap.set("n", "gd", function()
		vim.lsp.buf.definition()
	end, opts)
	keymap.set("n", "K", function()
		vim.lsp.buf.hover()
	end, opts)
	keymap.set("n", "<leader>vws", function()
		vim.lsp.buf.workspace_symbol()
	end, opts)
	keymap.set("n", "<leader>vd", function()
		vim.diagnostic.open_float()
	end, opts)
	keymap.set("n", "[d", function()
		vim.diagnostic.goto_next()
	end, opts)
	keymap.set("n", "]d", function()
		vim.diagnostic.goto_prev()
	end, opts)
	keymap.set("n", "<leader>vca", function()
		vim.lsp.buf.code_action()
	end, opts)
	keymap.set("n", "<leader>vrr", function()
		vim.lsp.buf.references()
	end, opts)
	keymap.set("n", "<leader>re", function()
		vim.lsp.buf.rename()
	end, opts)
	keymap.set("i", "<C-h>", function()
		vim.lsp.buf.signature_help()
	end, opts)

	-- format lsp
	keymap.set("n", "<leader>f", vim.lsp.buf.format)

	-- Disable hover in favor of Pyright
	client.server_capabilities.hoverProvider = false

	-- format on save
	lsp_zero.buffer_autoformat()
end)

lsp_zero.setup_servers({ "lua_ls", "ruff_lsp", "tsserver", "pyright" })

-- autocomplete
local cmp_select = { behavior = cmp.SelectBehavior.Select }
cmp.setup({
	mapping = cmp.mapping.preset.insert({
		["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
		["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
		["<Tab>"] = cmp.mapping.confirm({ select = true }),
		["<C-Space>"] = cmp.mapping.complete(),
	}),
})
