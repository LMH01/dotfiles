local function pconf(plugin)
	return "require(\"pluginconf." .. plugin .. "\")"
end

return require("packer").startup(function(use)
  use {
      "neovim/nvim-lspconfig",
      config = pconf "lspconf",
  }
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-cmdline"
  use { "hrsh7th/nvim-cmp", config = pconf "nvim_cmp" }

  use "saadparwaiz1/cmp_luasnip"
  use {
      "L3MON4D3/LuaSnip",
      config = pconf "nvim_luasnip",
      requires = {
          "rafamadriz/friendly-snippets",
          -- temporarily removed due to syntax error in recent commit
          --"honza/vim-snippets",
      },
  }

  use {
      "nvim-lualine/lualine.nvim",
      requires = "arkav/lualine-lsp-progress",
      config = pconf "line",
  }

 	use {
      "Saecki/crates.nvim",
      config = function()
          require("crates").setup {}
      end,
  }

	use "wbthomason/packer.nvim"
	use {
		"steelsojka/pears.nvim",
		config = pconf("nvim_pears")
	}

	use "kyazdani42/nvim-web-devicons"

	use {
		'kyazdani42/nvim-tree.lua',
		requires = 'kyazdani42/nvim-web-devicons',
		config = pconf("nvimtree")
	}

	use {
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
		config = pconf("treesitter")
	}

	use {
		"dracula/vim",
		as = "dracula",
	}

	use "cespare/vim-toml"

	use("sheerun/vim-polyglot")
	use {
  	"nvim-telescope/telescope.nvim",
  	requires = "nvim-lua/plenary.nvim",
  }
end)
