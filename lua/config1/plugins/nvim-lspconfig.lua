return {
    "neovim/nvim-lspconfig",

    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },

    config = function()
        require("mason").setup({
            opts = {
                ensure_installed = {
                    "clang-format",
                }
            }
        })
        require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "clangd" }
        })

        require("lspconfig").lua_ls.setup {
            settings = {
                Lua = {
                    diagnostics = {
                        globals = {"vim"},
                    }
                }
            }
        }
        require("lspconfig").clangd.setup {
            root_pattern = {
                '.clangd',
                '.clang-tidy',
                '.clang-format',
                'compile_commands.json',
                'compile_flags.txt',
                'configure.ac', -- AutoTools
            },
        }
        require("lspconfig").pyright.setup {}
        require("lspconfig").autotools_ls.setup {}
        require("lspconfig").cmake.setup {}
        require("lspconfig").dockerls.setup {}
        require("lspconfig").tsserver.setup {}
        require("lspconfig").omnisharp.setup {}
        require("lspconfig").marksman.setup {}
    end,
}
