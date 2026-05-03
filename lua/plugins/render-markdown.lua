return {
	"MeanderingProgrammer/render-markdown.nvim",
	cmd = { "RenderMarkdown" },
	ft = { "markdown" },
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("render-markdown").setup({
			enabled = true,
			render_modes = { "n", "c", "t" },
			debounce = 100,
			log_level = "error",
		})
	end,
}
