return {
    "nvim-telescope/telescope.nvim",
    dependencies = {"nvim-lua/plenary.nvim"},
    config = function()
        require("telescope").setup({
            defaults = {
            file_ignore_patterns = {"node_modules", "lazy-lock.json", "build"}
            },
        })
    end,

    keys = {
        {"<leader>pf", "<cmd>Telescope find_files<cr>", mode = "n"},
        {"<leader>ps", "<cmd>Telescope live_grep<cr>", mode = "n"},
    	{"<leader>bf", "<cmd>Telescope buffers<cr>", mode = "n"},
	},
}
