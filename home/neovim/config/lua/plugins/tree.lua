return {
    "nvim-tree.lua",
    keys = {
	    { "<leader><leader>", function ()
		    require("nvim-tree.api").tree.toggle()
		end, mode = {"n"}},
    },
    after = function ()
        require("nvim-tree").setup {}
    end
}
