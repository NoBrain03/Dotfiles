local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{"Shatur/neovim-ayu"},
	{"ellisonleao/gruvbox.nvim"},
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{"rose-pine/neovim",name = "rosepine"},
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' }
	},
  {
    "hachy/eva01.vim",
    lazy = false,
    priority = 1000,
    config = function()
      --vim.cmd.colorscheme "eva01"
      -- or
      -- vim.cmd.colorscheme "eva01-LCL"
    end,
	},
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.6',
		-- or                              , branch = '0.1.x',
		dependencies = { 'nvim-lua/plenary.nvim' }},
		{"nvim-lua/plenary.nvim"},
		{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
		{"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" }},
		{'williamboman/mason.nvim',
		opts = {
			ensure_installed = {
				"clangd",
				"clang-format",
				"lua-language-server"
			}}},
			{'williamboman/mason-lspconfig.nvim'},
			{'neovim/nvim-lspconfig'},
			{'hrsh7th/nvim-cmp'},
			{
				"saadparwaiz1/cmp_luasnip",
				"hrsh7th/cmp-nvim-lua",
				"hrsh7th/cmp-nvim-lsp",
				"hrsh7th/cmp-buffer",
				"hrsh7th/cmp-path",},

				{'hrsh7th/cmp-nvim-lsp'},
				{'L3MON4D3/LuaSnip'},
				{'saadparwaiz1/cmp_luasnip'},
				{'rafamadriz/friendly-snippets'},
				{'mfussenegger/nvim-dap'},
				{"folke/tokyonight.nvim"},
				{
    			"scottmckendry/cyberdream.nvim",
    			lazy = false,
    			priority = 1000,
				},
				{'akinsho/toggleterm.nvim', version = "*", config = true},
				{ 'Civitasv/cmake-tools.nvim' },
				{
					"folke/which-key.nvim",
					event = "VeryLazy",
					opts = {
						-- your configuration comes here
						-- or leave it empty to use the default settings
						-- refer to the configuration section below
					},
					keys = {
						{
							"<leader>?",
							function()
								require("which-key").show({ global = false })
							end,
							desc = "Buffer Local Keymaps (which-key)",
						},
					},
				},
			})

