return {
    "blink.cmp",
    version = "*",
    event = "InsertEnter",
    after = function ()
        require("blink.cmp").setup {}
    end,
}
