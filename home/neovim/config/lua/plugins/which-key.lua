return {
    "which-key.nvim",
    keys = {
        { "<leader>?", function ()
            require("which-key").show { global = true }
        end, mode = {"n"} }
    },
}
