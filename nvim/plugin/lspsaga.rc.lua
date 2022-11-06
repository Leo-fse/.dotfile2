local status, saga = pcall(require, "lspsaga")
if not status then
	return
end

saga.init_lsp_saga({ symbol_in_winbar = { in_custom = true } })

local opts = { noremap = true, silent = true }

-- vim.keymap.set("n", "<SPACE>e", "<Cmd>Lspsaga diagnostic_jump_next<CR>", opts)
-- vim.keymap.set("n", "g[", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
-- vim.keymap.set("n", "gd", "<Cmd>Lspsaga peak_definition<CR>", opts)
-- vim.keymap.set("n", "rn", "<Cmd>Lspsaga rename<CR>", opts)
-- vim.keymap.set("n", "gf", "<Cmd>Lspsaga lsp_finder<CR>", opts)
-- vim.keymap.set("n", "K", "<Cmd>Lspsaga hover_doc<CR>", opts)
-- vim.keymap.set("i", "<C-k>", "<Cmd>Lspsaga signature_help<CR>", opts)
