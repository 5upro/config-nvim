return {
	"nvim-treesitter/nvim-treesitter",
	branch = "master",
	build = function()
		require("nvim-treesitter.install").update({ with_sync = true })()
	end,
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			ensure_installed = {
				"c",
				"cpp",
				"lua",
				"vim",
				"vimdoc",
				"query",
				"javascript",
				"typescript",
				"tsx",
				"html",
				"xml",
				"php",
				"vue",
				"css",
				"python",
				"java",
				"kotlin",
				"sql",
				"yaml",
                "json",
                "markdown",
                "markdown_inline",
			},
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
