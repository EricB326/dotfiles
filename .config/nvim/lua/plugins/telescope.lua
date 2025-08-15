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
	opts = function(_, opts)
		local tcfg = require("telescope.config")

		local vimgrep_arguments = { unpack(tcfg.values.vimgrep_arguments) }
		table.insert(vimgrep_arguments, "--hidden")
		table.insert(vimgrep_arguments, "--glob")
		table.insert(vimgrep_arguments, "!**/.git/*")

		opts = opts or {}

		opts.defaults = vim.tbl_deep_extend("force", opts.defaults or {}, {
			vimgrep_arguments = vimgrep_arguments,
			mappings = {
				i = {
					["<C-u>"] = false,
				},
			},
		})

		opts.pickers = vim.tbl_deep_extend("force", opts.pickers or {}, {
			find_files = {
				find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
			},
		})
		return opts
	end,	
}
