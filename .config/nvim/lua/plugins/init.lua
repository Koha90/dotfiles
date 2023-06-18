local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git", "clone", "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git", "--branch=stable", -- latest stable release
        lazypath
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{ "neovim/nvim-lspconfig" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/cmp-buffer"},
	{ "hrsh7th/cmp-path"},
	{ "hrsh7th/cmp-cmdline"},
	{ "hrsh7th/nvim-cmp"},
	{ "j-hui/fidget.nvim", tag="legacy"},
	{ "L3MON4D3/LuaSnip"},
	{ "saadparwaiz1/cmp_luasnip"},
	{ "rafamadriz/friendly-snippets"},
	{ "ray-x/lsp_signature.nvim"},
	{ "chr4/nginx.vim"},
	{ "MunifTanjim/prettier.nvim"},
	{ "jose-elias-alvarez/null-ls.nvim"},
	{ "folke/neodev.nvim"},
	 {"williamboman/mason.nvim", build = ":MasonUpdate"},

	{ "mfussenegger/nvim-dap" },
	{ "leoluz/nvim-dap-go" },
	{ "rcarriga/nvim-dap-ui" },
	{ "nvim-neotest/neotest" },
	{ "nvim-neotest/neotest-go" },

	-- Base
	{ "folke/todo-comments.nvim" },
	{ "akinsho/toggleterm.nvim" },
	{ "antoinemadec/FixCursorHold.nvim" },
	{ "folke/which-key.nvim" },

	-- View
	{ "nvim-lualine/lualine.nvim" },
	{ "kyazdani42/nvim-web-devicons" },
	{ { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" } },
	{ "nvim-treesitter/nvim-treesitter-textobjects" },
	{ "lukas-reineke/indent-blankline.nvim" },
	{ "Mofiqul/vscode.nvim" },

	-- Navigation
	{ "kyazdani42/nvim-tree.lua" },
	{ "nvim-lua/plenary.nvim" },
	{ "nvim-telescope/telescope.nvim" },
	{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	{ "karb94/neoscroll.nvim" },
	{ "akinsho/bufferline.nvim" },
	{ "preservim/tagbar" },
	{ "phaazon/hop.nvim" },

	-- Git
	{ "lewis6991/gitsigns.nvim" },

	-- Edit
	{ "tpope/vim-surround" },
	{ "windwp/nvim-autopairs" },
	{ "numToStr/Comment.nvim" },
})
