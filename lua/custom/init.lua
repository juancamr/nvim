local opt = vim.opt
local cmd = vim.cmd

opt.relativenumber = true
opt.scrolloff = 8
opt.colorcolumn = "80"

-- no continue comment
cmd("autocmd BufEnter * set formatoptions-=cro")
cmd("autocmd BufEnter * setlocal formatoptions-=cro")
