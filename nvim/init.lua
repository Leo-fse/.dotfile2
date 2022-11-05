require("tmk.base")
require("tmk.plugins")
require("tmk.hilights")
require("tmk.keymaps")

vim.cmd([[autocmd BufWritePost plugins.lua PackerCompile]])
