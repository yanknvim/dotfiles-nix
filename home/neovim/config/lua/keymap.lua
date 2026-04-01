vim.keymap.set({"n"}, "<leader>]", function ()
    vim.diagnostic.jump {
        diagnostic = vim.diagnostic.get_next(),
    }
end)

vim.keymap.set({"n"}, "<leader>[", function ()
    vim.diagnostic.jump {
        diagnostic = vim.diagnostic.get_prev(),
    }
end)

vim.keymap.set({"n"}, "gn", vim.lsp.buf.rename)
