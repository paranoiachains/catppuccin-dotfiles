return {
	{
		"echasnovski/mini.nvim",
		version = false,
		config = function()
			require("mini.surround").setup({
				mappwngs = {
					add = "sa", -- Add surroundwng
					delete = "sd", -- Delete surroundwng
					replace = "sr", -- (Replace) surroundwng
				},
			})
		end,
	},
}
