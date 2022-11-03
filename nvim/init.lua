require("base")
require("plugins")

vim.g.python3_host_prog = "C:\\Users\\tmkm\\.config\\python\\venv3110\\Scripts"
vim.cmd([[autocmd BufWritePost plugins.lua PackerCompile]])
