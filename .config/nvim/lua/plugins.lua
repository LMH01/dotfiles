local function pconf(plugin)
	return "require(\"pluginconf." .. plugin .. "\")"
end

return require("packer").startup(function(use)
	use "wbthomason/packer.nvim"
	use {
		"steelsojka/pears.nvim",
		config = pconf("nvim_pears")
	}
	use {
		"neoclide/coc.nvim",
		branch = "release",
		config = pconf("coc")
	}

	use "kyazdani42/nvim-web-devicons"

	use {
		'kyazdani42/nvim-tree.lua',
		requires = 'kyazdani42/nvim-web-devicons',
		config = pconf("nvimtree")
	}
end)
