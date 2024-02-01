return {
    "zbirenbaum/copilot.lua",
    event = {"InsertEnter", "CmdlineEnter"},
    config = function()
        require("copilot").setup({})
    end,
}
