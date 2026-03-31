return {
    "nvim-autopairs",
    events = "InsertEnter",
    after = function ()
        require("nvim-autopairs").setup {}
    end,
}
