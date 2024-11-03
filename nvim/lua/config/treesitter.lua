return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
        require("nvim-treesitter.configs").setup({
            ensure_installed = { 
		"gitignore",
		"glsl",
		"html",
		"java",
		"javascript",
		"json",
		"tsx",
		"typescript",
		"css",
	    },
            sync_install = false,
            highlight = { enable = true, additional_vim_regex_highlighting = false },
            indent = { enable = true },  
        })
    end
}
