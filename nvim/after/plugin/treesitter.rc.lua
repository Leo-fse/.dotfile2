local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
	return
end

treesitter.setup({
	highlight = {
		enable = true,
		disable = {},
	},
	indent = {
		enable = true,
		disable = {},
	},
	ensure_installed = {
		"lua",
		"tsx",
		"typescript",
		"javascript",
		"json",
		"python",
		"toml",
		"html",
		"css",
		"rust",
		"sql",
		"markdown",
		"markdown_inline",
		"comment",
		"regex",
		"bash",
	},
	autotag = {
		enable = true,
	},
})
