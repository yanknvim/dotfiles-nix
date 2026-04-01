vim.opt.cmdheight = 0

local ok, ui2 = pcall(require, "vim._core.ui2")
if ok then
    ui2.enable({
        enable = true,
    })
end

