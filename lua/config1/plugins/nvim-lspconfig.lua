return {
    "neovim/nvim-lspconfig",

    config = function()
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
        require("lspconfig").pyright.setup {
            filetypes = { "python" },
        }
    end,
}
