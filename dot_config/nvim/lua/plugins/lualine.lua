-- https://github.com/nvim-tree/nvim-web-devicons.git

return {
	'nvim-tree/nvim-web-devicons',
	{
		'nvim-lualine/lualine.nvim',
		dependencies = {
			'nvim-tree/nvim-web-devicons',
			opt = true
		},
		config = function()
			require("lualine").setup({
				options = {
					globalstatus = true,
				}
			})
		end
	},
	event = 'VimEnter',
}

