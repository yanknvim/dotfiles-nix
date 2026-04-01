return {
    "toggleterm.nvim",
    cmd = "ToggleTerm",
    keys = {
        { "<leader>g", "<cmd>lua _lazygit_toggle()<CR>", desc = "Lazygit" },
    },
    after = function ()
        require("toggleterm").setup {
            close_on_exit = true,
        }

        local Terminal = require("toggleterm.terminal").Terminal
        local lazygit = Terminal:new {
            cmd = "lazygit",
            direction = "float",
            hiddne = true,
        }

        function _lazygit_toggle()
            lazygit:toggle()
        end
    end,
}
