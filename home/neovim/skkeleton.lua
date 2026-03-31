return {
    "skkeleton",
    keys = {
        { "<C-j>", "<Plug>(skkeleton-toggle)", mode = { "i", "c" } },
    },
    after = function ()
        vim.fn["skkeleton#config"]({
            globalDictionaries = {
                "@skk-dict-path@"
            }
        })
    end
}
