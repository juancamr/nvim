require("Comment").setup()
require("lualine").setup({
	options = {
		theme = "auto",
	},
})
require("nvim-autopairs").setup()
require("trouble").setup({ icons = false })
require("nvim-surround").setup()

vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
