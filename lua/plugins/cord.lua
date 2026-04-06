return {
  "vyfor/cord.nvim",
  event = "VeryLazy",
  ---@type CordConfig
  opts = {
    editor = {
      client = "neovim",
	  tooltip = "The Chad Text Editor",
    },
    display = {
      theme = "minecraft",
	  flavor = "accent",
    },
	text = {
      editing = function(opts)
        return string.format('Editing %s', opts.filename)
    end,
	variables = true,
       viewing = 'Viewing a file',
	},
  },
}

