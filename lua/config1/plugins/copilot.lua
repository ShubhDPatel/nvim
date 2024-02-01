return {
    "zbirenbaum/copilot.lua",
    enabled = false,
    event = {"InsertEnter", "CmdlineEnter"},
    config = function()
        require("copilot").setup({})
    end,
}
