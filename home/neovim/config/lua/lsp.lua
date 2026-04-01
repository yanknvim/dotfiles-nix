vim.lsp.enable("nil_ls")
vim.lsp.enable("lua_ls")
vim.lsp.enable("clangd")

vim.diagnostic.config {
    jump = {
        on_jump = function (_, bufnr)
            vim.diagnostic.open_float { bufnr = bufnr, scope = "cursor", focus = false }
        end
    }
}
