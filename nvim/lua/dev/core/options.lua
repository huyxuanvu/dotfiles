vim.opt.clipboard = "unnamedplus"
vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
            
vim.opt.fillchars:append { eob = " " }

--turn off backgournd
 vim.cmd [[
 highlight Normal guibg=NONE ctermbg=NONE
 highlight NormalNC guibg=NONE ctermbg=NONE
 highlight SignColumn guibg=NONE ctermbg=NONE
 highlight VertSplit guibg=NONE ctermbg=NONE
 highlight EndOfBuffer guibg=NONE ctermbg=NONE
 ]]

