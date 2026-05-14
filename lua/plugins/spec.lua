return {
	{
		"nvim-mini/mini.surround",
		version = "*"
	},
	{
		"phha/zenburn.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme zenburn]])
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" }
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" }
	},
}
