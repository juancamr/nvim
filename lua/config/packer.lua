vim.cmd.packadd("packer.nvim")
local packer = require("packer")

return packer.startup(function(use)
	-- My Plugins
	use("wbthomason/packer.nvim")
	use("nvim-lua/plenary.nvim")
	use({ "nvim-telescope/telescope.nvim", tag = "0.1.5" }) -- requires plenary
	use({ "ThePrimeagen/harpoon", branch = "harpoon2" }) -- requires plenary
	use("folke/trouble.nvim")
	use("nvim-treesitter/nvim-treesitter")
	use("theprimeagen/refactoring.nvim")
	use("mbbill/undotree")
	use("tpope/vim-fugitive")
	use("folke/zen-mode.nvim")
	use("eandrju/cellular-automaton.nvim")
	use("laytan/cloak.nvim")
	use("github/copilot.vim")

	-- Color schemes
	use({ "rose-pine/neovim", as = "rose-pine" })
	use({ "ellisonleao/gruvbox.nvim" })

	-- Custom plugins
	use("windwp/nvim-autopairs")
	use("nvim-tree/nvim-web-devicons")
	use("nvim-lualine/lualine.nvim")
	use("numToStr/Comment.nvim")
	use("onsails/lspkind.nvim")
	use({ "kylechui/nvim-surround", tag = "*" })
	use("stevearc/conform.nvim")
	use("mfussenegger/nvim-lint")
	use("windwp/nvim-ts-autotag")

	-- lsp
	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		requires = {
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },
			{ "neovim/nvim-lspconfig" },
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "L3MON4D3/LuaSnip" },
		},
	})
end)
