return {
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	keys = {
		{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "[F]ind [F]files" },
		{ "<leader>fg", "<cmd>Telescope live_grep<cr>",  desc = "[F]ind by [G]rep" },
		{ "<leader>fb", "<cmd>Telescope buffers<cr>",    desc = "[F]ind existing [B]uffers" },
		{ "<leader>fh", "<cmd>Telescope help_tags<cr>",  desc = "[F]ind [H]elp" },
		{ "<leader>fk", "<cmd>Telescope keymaps<cr>",    desc = "[F]ind [K]eymaps" },
		{ "<C-g>",      "<cmd>Telescope git_files<cr>",  desc = "[Ctrl+g] Find Git files" },
	},
	opts = {
		defaults = {
			mappings = {
				i = {
					["<C-u>"] = false,
				},
			},
		}
	}
}
