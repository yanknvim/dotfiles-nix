return {
    "telescope.nvim",
    dep_of = {
        "plenary.nvim",
        "telescope-fzf-native.nvim",
    },
    keys = {
        { "<Leader>ff", function ()
            require("telescope.builtin").find_files()
        end },
        { "<Leader>fg", function ()
            require("telescope.builtin").live_grep()
        end },
        { "<Leader>fb", function ()
            require("telescope.builtin").buffers()
        end },
        { "<Leader>fh", function ()
            require("telescope.builtin").help_tags()
        end },
    },
    after = function ()
        require("telescope").setup {}
    end,
}
