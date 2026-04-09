return {
    "indent-blankline.nvim",
    events = { "BufReadPre", "BufNewFile" },
    after = function ()
        require("ibl").setup {}
    end,
}
