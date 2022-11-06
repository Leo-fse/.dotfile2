local keymap = vim.keymap

local opts = { noremap = true, silent = true }

vim.g.mapleader = " "
keymap.set("i", "jk", "<ESC>:<C-u>w<CR>", opts) --Insertmodeをjkで抜けたら保存
keymap.set("n", "<LEADER>w", ":<C-u>w<CR>", opts) -- ファイル保存
keymap.set("n", "<ESC><ESC>", ":nohlsearch<CR>", opts)
keymap.set("n", "ex", ":<C-u>w<CR>:% so<CR>", opts) -- 実行
keymap.set("n", "x", '"_x')

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")
-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')
-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")
-- New tab
keymap.set("n", "te", ":tabedit")
-- Split window
keymap.set("n", "ss", ":split<Return><C-w>w")
keymap.set("n", "sv", ":vsplit<Return><C-w>w")
-- Move window
keymap.set("n", "<Space>", "<C-w>w")
keymap.set("", "sj", "<C-w>h")
keymap.set("", "si", "<C-w>k")
keymap.set("", "sk", "<C-w>j")
keymap.set("", "sl", "<C-w>l")
-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")
-- Git
keymap.set("n", "tig", ":<C-u>w<CR>:te tig<CR>")
keymap.set("n", "gs", ":<C-u>w<CR>:G status<CR>")
keymap.set("n", "gps", ":<C-u>w<CR>:G push<CR>")
keymap.set("n", "gpl", ":<C-u>w<CR>:G pull<CR>")
