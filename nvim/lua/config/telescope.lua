return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
        "nvim-lua/plenary.nvim"
    },
    require("telescope").setup({
                defaults = {
                    prompt_prefix = "> ",
                    selection_caret = "> ",
                    entry_prefix = "  ",
                    initial_mode = "insert",
                    sorting_strategy = "ascending",
                    layout_strategy = "flex",
                    layout_config = {
                        flex = { flip_columns = 199 },
                        horizontal = { preview_width = 0.5 },
                        vertical = { mirror = false },
                    },
                },
            }),
}
