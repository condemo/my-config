-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt

opt.scrolloff = 8
opt.termguicolors = true
opt.swapfile = false
opt.colorcolumn = "80"

opt.hlsearch = false
opt.incsearch = true

opt.foldlevelstart = 99

vim.g.python3_host_prog = "/usr/bin/python3"
