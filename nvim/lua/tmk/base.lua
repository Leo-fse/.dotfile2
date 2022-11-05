vim.cmd("autocmd!")

vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.wo.number = true
vim.opt.wrap = false -- No Wrap lines
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.cmdheight = 1

vim.opt.clipboard:prepend({ "unnamed", "unnamedplus" })

vim.g.python3_host_prog = "C:\\Users\\tmkm\\.config\\python\\venv3110\\Scripts"
