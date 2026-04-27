-- Load nyoom-engineering/oxocarbon.nvim

return {
	{
		"nyoom-engineering/oxocarbon.nvim",
		lazy = false,
		priority = 1000,
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "oxocarbon",
		},
	},
}
