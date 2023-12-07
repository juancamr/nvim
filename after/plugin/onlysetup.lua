require("Comment").setup()
require("lualine").setup()
require("nvim-autopairs").setup()
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
