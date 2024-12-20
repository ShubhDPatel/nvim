return {
    "mfussenegger/nvim-dap",
    dependencies = {
        "rcarriga/nvim-dap-ui",
        "nvim-neotest/nvim-nio",
        {
            "mfussenegger/nvim-dap-python",
            ft = "python",
        },
    },
    config = function()
        local dap = require("dap")
        local dapui = require("dapui")

        dapui.setup()

        -- Lazy-load dap-python only for Python files
        vim.api.nvim_create_autocmd("FileType", {
            pattern = "python",
            callback = function()
                require("dap-python").setup("~/.local/share/nvim/mason/packages/debugpy/venv/bin/python")
            end,
        })

        dap.listeners.after.event_initialized["dapui_config"] = function()
            dapui.open()
        end
        dap.listeners.before.event_terminated["dapui_config"] = function()
            dapui.close()
        end
        dap.listeners.before.event_exited["dapui_config"] = function()
            dapui.close()
        end

        vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, {})
        vim.keymap.set("n", "<leader>dc", dap.continue, {})

    end,
}
