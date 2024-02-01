return {
    "jedrzejboczar/possession.nvim",
    event = "CmdlineEnter",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope.nvim",
    },
    config = function()
        require("possession").setup({
            commands = {
                save = 'SSave',
                load = 'SLoad',
                delete = 'SDelete',
                list = 'SList',
            }
        })
    end,
}
