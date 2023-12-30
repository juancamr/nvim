require("Comment").setup()
require("lualine").setup()
require("nvim-autopairs").setup()
require("trouble").setup({ icons = false })
require("nvim-surround").setup()
require("nvim-ts-autotag").setup()

vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
