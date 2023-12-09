-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd("packer.nvim")

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")
	use("nvim-lua/plenary.nvim")

	-- autocompletion
	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" },
			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "L3MON4D3/LuaSnip" },
		},
	})

	-- navigation
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use({
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- quick fix actions
	use({
		"folke/trouble.nvim",
		config = function()
			require("trouble").setup({
				icons = false,
			})
		end,
	})

	-- color for variables and functions
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	})

	-- auto pair brackets
	use("windwp/nvim-autopairs")

	-- fancy status bar
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons", opt = true },
	})

	-- toggle comments
	use("numToStr/Comment.nvim")

	-- color schemes
	use({
		"rose-pine/neovim",
		as = "rose-pine",
	})
	use({ "ellisonleao/gruvbox.nvim" })

	-- formatter
	use("stevearc/conform.nvim")

	-- others
	use("theprimeagen/refactoring.nvim") -- extract functions variables
	use("mbbill/undotree") -- undo history
	use("tpope/vim-fugitive") -- git management
	use("nvim-treesitter/nvim-treesitter-context") -- i have no idea what is this
	use("folke/zen-mode.nvim") -- focus mode
	use("eandrju/cellular-automaton.nvim") -- xd
	use("laytan/cloak.nvim") --
	use("echasnovski/mini.nvim")
	use("jose-elias-alvarez/null-ls.nvim")
end)
