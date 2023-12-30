require("Comment").setup()
require("lualine").setup({
	options = {
		theme = "auto",
	},
})
require("nvim-autopairs").setup()
require("trouble").setup({ icons = false })
require("nvim-surround").setup()
require("nvim-web-devicons").setup({
	override_by_extension = {
		["astro"] = {
			icon = "󰬈",
			color = "#FF0000",
			name = "astro",
		},
	},
})

vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
