return {
    "nvim-treesitter",
    lazy = false,
    config = function ()
        require("nvim-treesitter.configs").setup {
            highlight = {
                enable = true,
            },
            indent = { enable = true },
            ensure_installed = { "lua", "vim", "rust", "nix" },
        }
    end,
}
