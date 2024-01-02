local opt = vim.opt
local cmd = vim.cmd
local api = vim.api

opt.relativenumber = true
opt.scrolloff = 8
opt.colorcolumn = "80"
opt.confirm = true
opt.undodir = os.getenv "HOME" .. "/.vim/undodir"

-- no continue comment
cmd "autocmd BufEnter * set formatoptions-=cro"
cmd "autocmd BufEnter * setlocal formatoptions-=cro"

api.nvim_set_hl(0, "LineNrAbove", { fg = "#a3a3a3" })
api.nvim_set_hl(0, "LineNr", { fg = "white" })
api.nvim_set_hl(0, "LineNrBelow", { fg = "#a3a3a3" })
