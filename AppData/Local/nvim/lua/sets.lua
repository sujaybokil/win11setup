local o = vim.o
local wo = vim.wo
local bo = vim.bo

vim.cmd('syntax enable')
vim.cmd('filetype plugin indent on')

o.termguicolors = true
o.guicursor = ''
o.shiftwidth = 4
o.ignorecase = true
o.mouse = "a"
o.showmode = false
o.scrolloff = 8
o.updatetime = 100
o.splitbelow = true
o.splitright = true
o.clipboard = o.clipboard .. 'unnamedplus'
o.undodir = vim.fn.stdpath('config') .. '/undodir'
o.completeopt='menu,menuone,noselect'
wo.number = true
wo.relativenumber = true
wo.wrap = false
wo.signcolumn = "yes"
wo.cursorline = true
wo.colorcolumn = "90"
bo.tabstop = 4
bo.softtabstop = 4
bo.expandtab = true
bo.smartindent = true
bo.undofile = false
bo.swapfile = false
