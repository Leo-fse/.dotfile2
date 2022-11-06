vim.cmd("autocmd!")

vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.wo.number = true -- 行番号表示
vim.opt.wrap = false -- No Wrap lines
vim.opt.wildmenu = true -- コマンドモードの補完
vim.opt.ruler = true -- カーソル位置の表示
vim.opt.cursorline = true -- カーソルハイライト
vim.opt.expandtab = true -- タブを複数のスペースに置き換え
vim.opt.tabstop = 2 -- タブは半角2文字
vim.opt.shiftwidth = 2 -- タブの幅
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.cmdheight = 1

vim.opt.clipboard:prepend({ "unnamed", "unnamedplus" })

vim.g.python3_host_prog = "C:\\Users\\tmkm\\.config\\python\\venv3110\\Scripts"
