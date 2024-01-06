local opt = vim.opt
local api = vim.api

opt.relativenumber = true
opt.scrolloff = 8
opt.colorcolumn = "80"
opt.undodir = os.getenv "HOME" .. "/.vim/undodir"
opt.clipboard = "unnamed"
opt.wrap = false

api.nvim_set_hl(0, "LineNrAbove", { fg = "#a3a3a3" })
api.nvim_set_hl(0, "LineNr", { fg = "white" })
api.nvim_set_hl(0, "LineNrBelow", { fg = "#a3a3a3" })
