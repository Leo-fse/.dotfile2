local status, packer = pcall(require, "packer")
if not status then
	print("Packer is not installed")
	return
end

vim.cmd([[packadd packer.nvim]])
packer.startup(function(use)
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
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
	--Treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})
	-- ColorScheme
	use("folke/tokyonight.nvim")
	use("norcalli/nvim-colorizer.lua")
	use("folke/lsp-colors.nvim")
	-- StatusLine
	use("nvim-lualine/lualine.nvim")
	-- BufferLine
	use("akinsho/nvim-bufferline.lua")

	-- Formatter & Completetion & LSP
	use("neovim/nvim-lspconfig") -- LSP
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("j-hui/fidget.nvim") -- nvim-lsp progress UIs

	use("jose-elias-alvarez/null-ls.nvim") -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua

	use("hrsh7th/cmp-buffer") -- nvim-cmp source for buffer words
	use("hrsh7th/cmp-nvim-lsp") -- nvim-cmp source for neovim's built-in LSP
	use("hrsh7th/nvim-cmp") -- Completion
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/cmp-vsnip")
	use("hrsh7th/vim-vsnip")

	use("onsails/lspkind-nvim") -- vscode-like pictograms
	use("glepnir/lspsaga.nvim") -- LSP UIs
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

	-- Git
	use("tpope/vim-fugitive")
	use("lewis6991/gitsigns.nvim")
	-- Markdown
	-- install without yarn or npm
	use({
		"iamcco/markdown-preview.nvim",
		run = "cd app && npm install",
		setup = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
	})

	-- Zen mode
	use("folke/zen-mode.nvim")
	-- Notice
	--	use({
	--		"folke/noice.nvim",
	--		config = function()
	--			require("noice").setup()
	--		end,
	--		requires = {
	--			-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
	--			"MunifTanjim/nui.nvim",
	--			-- OPTIONAL:
	--			--   `nvim-notify` is only needed, if you want to use the notification view.
	--			--   If not available, we use `mini` as the fallback
	--			"rcarriga/nvim-notify",
	--		},
	--	})
end)

vim.cmd([[colorscheme tokyonight]])
