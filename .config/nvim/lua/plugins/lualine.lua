return {
	{
		"nvim-lualine/lualine.nvim",
		opts = {
			options = {
				theme = "catppuccin",
				component_separators = "|",
				section_separators = "",
				icons_enabled = false,
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch", "diff", "diagnostics" },
				lualine_c = { "filename" },
				lualine_x = { "encoding", "fileformat", "filetype" },
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
		},
	},
}
