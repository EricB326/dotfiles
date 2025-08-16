return {
	'nvim-lualine/lualine.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	opts = {
		template = 'gruvbox_dark',
		sections = {
			lualine_a = { 'mode' },
			lualine_b = { 'branch' },
			lualine_c = { 'filename' },
			lualine_x = { '' },
			lualine_y = { 'progress' },
			lualine_z = { 'filetype', },
		},
	}
}
