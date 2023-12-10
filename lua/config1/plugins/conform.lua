return {
    "stevearc/conform.nvim",
    cmd = "Format",
    config = function()
        local conform = require("conform")

        -- Put in the formatters you want to use for specific languages
        conform.setup({
            formatters_by_ft = {
                lua = {"stylua"},
                cpp = {"clang-format"},
            },

            -- Formats when you type in ":Format"
            formatter = {
                my_formatter = {
                    command = "Format",
                }
            }
        })
    end,
}
