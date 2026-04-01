vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("keymap")

require("lsp")

require("lze").load("plugins");

require("extui")

vim.cmd[[colorscheme tokyonight-storm]]

local opt = vim.opt

opt.number = true
opt.cursorline = true

opt.autoindent = true
opt.smartindent = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

opt.showmatch = true

opt.hlsearch = true
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.wildmenu = true

opt.backup = false
opt.writebackup = false
opt.swapfile = false

