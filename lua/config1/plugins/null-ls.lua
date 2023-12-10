return {
    "jose-elias-alvarez/null-ls.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    opts = function()
        local null_ls = require("null-ls")
        sources = {
            null_ls.builtins.formatting.stylua,
            null_ls.builtins.formatting.clang_format,
        }
    end,
}
