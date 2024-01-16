return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    cmd = "NvimTreeToggle",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },

    config = function()
        require("nvim-tree").setup({})
    end,
    vim.api.nvim_set_keymap('n', '<leader>ee', ':NvimTreeToggle<CR>', { noremap = true, silent = true }),
}
