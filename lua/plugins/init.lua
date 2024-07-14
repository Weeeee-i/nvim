require("plugins/lazy-pm")

require("lazy").setup({
	spec = {
		{
			"neovim/nvim-lspconfig",
			init = function()
				require("../configs/lspconfig")
			end,
		},
		{
			"echasnovski/mini.nvim",
			init = function()
				require("mini.completion").setup()
			end,
		},
		{
			"williamboman/mason.nvim",
			init = function()
				require("mason").setup()
			end,
		},
		{
			"mhartington/formatter.nvim",
			init = function()
				require("../configs/formatter")
			end,
		},

		{
			"windwp/nvim-autopairs",
			event = "InsertEnter",
			config = true,
		},
	},
})
