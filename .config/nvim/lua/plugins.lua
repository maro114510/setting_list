
return {
	-- input source
	'keaising/im-select.nvim',
	-- input completion
	{
		'neoclide/coc.nvim',
		branch = 'release',
	},
	'fatih/vim-go',
	-- filer
	'preservim/nerdtree',
	-- ====== appearance ======
	-- theme
	'folke/tokyonight.nvim',
	-- 'shaunsingh/nord.nvim',
	-- bufferline
	{
		'akinsho/bufferline.nvim',
		version = "*",
		dependencies = 'nvim-tree/nvim-web-devicons'
	},
	-- icons
	-- 'bryanmylee/vim-colorscheme-icons',
	-- 'ryanoasis/vim-devicons',
	'nvim-tree/nvim-web-devicons',
	'yamatsum/nvim-cursorline',
	-- lua's underline status
	{
		'nvim-lualine/lualine.nvim',
		dependencies = {
			'nvim-tree/nvim-web-devicons',
			opt = true
		},
	},
	-- setting tab view
	'kdheepak/tabline.nvim',
	'echasnovski/mini.indentscope',
	-- syntax highlight
	{
		'nvim-treesitter/nvim-treesitter',
		build = ':TsUpdate',
	},

	-- fzf
	{
		'junegunn/fzf.vim',
		dependencies = {
			'junegunn/fzf',
		},
		build = ':call fzf#install()',
	},
	{
		'ibhagwan/fzf-lua',
		-- optional for icon support
		dependencies = {
			-- 'kyazdani42/nvim-web-devicons',
			'nvim-tree/nvim-web-devicons',
		},
	},

	-- auto brackets close
	'cohama/lexima.vim',
	-- manage git
	'vim-denops/denops.vim',
	'lambdalisue/gin.vim',
	-- markdown preview
	{
		"iamcco/markdown-preview.nvim",
		build = function() vim.fn["mkdp#util#install"]() end,
	},

	-- terminal usage
	{
		"akinsho/toggleterm.nvim",
		version = '*',
		config = function() require("toggleterm").setup() end
	},

	-- move cursor
	{
		'phaazon/hop.nvim',
		branch = 'v2', -- optional but strongly recommended
		config = function()
			-- you can configure hop the way you like here; see :h hop-config
			require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
		end
	},

	-- lsp
	'neovim/nvim-lspconfig',
	'hrsh7th/cmp-nvim-lsp',
	'hrsh7th/cmp-buffer',
	'hrsh7th/cmp-path',
	'hrsh7th/cmp-cmdline',
	'hrsh7th/nvim-cmp',
	'l3mon4d3/luasnip',
	'saadparwaiz1/cmp_luasnip',
	{
		'windwp/nvim-autopairs',
		config = function() require'nvim-autopairs'.setup {} end
	},
}

