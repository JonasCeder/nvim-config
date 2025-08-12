-- builtin.find_files, {} )This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	-- use({
	-- 'rose-pine/neovim',
	-- as = 'rose-pine',
	-- config = function()
	-- vim.cmd('colorscheme rose-pine')
	-- end
	-- })

	use({
		"catppuccin/nvim",
		as = "catppuccin",
		config = function()
			vim.cmd("colorscheme catppuccin")
		end,
	})
	use({
		"nvim-tree/nvim-tree.lua",
		requires = {
			"nvim-tree/nvim-web-devicons", -- optional
		},
	})
	use("tpope/vim-commentary")
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
	use("nvim-treesitter/playground")
	use("ThePrimeagen/harpoon")
	use("mbbill/undotree")
	use("tpope/vim-fugitive")
	use("nvim-lualine/lualine.nvim")
	use("windwp/nvim-ts-autotag")
	use("windwp/nvim-autopairs")
	-- LSP --
	--use('glepnir/lspsaga.nvim')
	use("neovim/nvim-lspconfig")
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")

	use("MunifTanjim/prettier.nvim")
	use("lewis6991/gitsigns.nvim")
	use("kyazdani42/nvim-web-devicons")

	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-vsnip")
	use("hrsh7th/vim-vsnip")
	use({
		"kdheepak/lazygit.nvim",
		-- optional for floating window border decoration
		requires = {
			"nvim-lua/plenary.nvim",
		},
	})
	use({
		"stevearc/conform.nvim",
		config = function()
			require("conform").setup()
		end,
	})
	use("sphamba/smear-cursor.nvim")
	--use("github/copilot.vim")
	use("brenoprata10/nvim-highlight-colors")
	use("hoscarcito/cursor-nvim-plugin")
  use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
})
end)
