local status, packer = pcall(require, "packer")
if not status then
	print("Packer is not installed")
	return
end

vim.cmd([[packadd packer.nvim]])
require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	-- Common utilities
	use("nvim-lua/plenary.nvim")

	-- Telescope
	use({
		"nvim-telescope/telescope.nvim",
		"nvim-telescope/telescope-file-browser.nvim",
		"kyazdani42/nvim-web-devicons",
	})
	-- FIX インストールできない
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
	--Treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})
	-- ColorScheme
	use("folke/tokyonight.nvim")
	-- StatusLine
	use("nvim-lualine/lualine.nvim")
	-- BufferLine
	use("akinsho/nvim-bufferline.lua")

	-- Formatter & Completetion & LSP
	use("onsails/lspkind-nvim") -- vscode-like pictograms
	use("hrsh7th/cmp-buffer") -- nvim-cmp source for buffer words
	use("hrsh7th/cmp-nvim-lsp") -- nvim-cmp source for neovim's built-in LSP
	use("hrsh7th/nvim-cmp") -- Completion
	use("neovim/nvim-lspconfig") -- LSP
	use("jose-elias-alvarez/null-ls.nvim") -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("glepnir/lspsaga.nvim") -- LSP UIs
	use("j-hui/fidget.nvim") -- nvim-lsp progress UIs
	-- Debug
	use({ "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } })

	-- Utils
	-- -- Tab
	use({
		"zefei/vim-wintabs",
		"zefei/vim-wintabs-powerline",
	})
	-- -- () <> {} & COMMENT
	use({
		"windwp/nvim-autopairs",
		"windwp/nvim-ts-autotag",
		"terrortylor/nvim-comment",
	})
	use({
		"folke/noice.nvim",
		config = function()
			require("noice").setup()
		end,
		requires = {
			-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
			"MunifTanjim/nui.nvim",
			-- OPTIONAL:
			--   `nvim-notify` is only needed, if you want to use the notification view.
			--   If not available, we use `mini` as the fallback
			"rcarriga/nvim-notify",
		},
	})
end)

vim.cmd([[colorscheme tokyonight]])