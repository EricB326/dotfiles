return {
	--"rebelot/kanagawa.nvim",
	--"rose-pine/neovim",
	--name = "rose-pine",
	"ellisonleao/gruvbox.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		--vim.cmd("colorscheme kanagawa-dragon")
		--vim.cmd("colorscheme rose-pine")
		vim.cmd("colorscheme gruvbox")
	end,
}
