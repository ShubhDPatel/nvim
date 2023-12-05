return {
    "neovim/nvim-lspconfig",
    
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },

    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls" }
        })
        
        require("lspconfig").lua_ls.setup {}
    end,
}
