return {
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup({
				current_line_blame = true,
				signcolumn = true

			})
			-- next / prev change
			vim.keymap.set("n", "]c", function()
				require("gitsigns").next_hunk()
			end)
			vim.keymap.set("n", "[c", function()
				require("gitsigns").prev_hunk()
			end)

			-- preview change
			vim.keymap.set("n", "<leader>hp", require("gitsigns").preview_hunk)
			-- stage hunk
			vim.keymap.set("n", "<leader>hs", require("gitsigns").stage_hunk)
			-- blame line
			vim.keymap.set("n", "<leader>hb", require("gitsigns").blame_line)
		end
	},
	{
		"tpope/vim-fugitive"
	}
}
