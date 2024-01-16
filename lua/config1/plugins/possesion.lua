return {
    "jedrzejboczar/possession.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope.nvim",
    },
    config = function()
        require("possession").setup({})
    end,
}
