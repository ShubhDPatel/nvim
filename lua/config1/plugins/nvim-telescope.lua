return {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    
    keys = {"<leader>ff", "<leader>fg", "<leader>fb", "<leader>fh"},

    dependencies = {
        "nvim-lua/plenary.nvim",
        'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build',
        'BurntSushi/ripgrep',
    },
    config = function()
        require('telescope').setup {
            defaults = {
                prompt_prefix = " ",
                selection_caret = " ",
                path_display = { "smart" },
            },

            TelescopeBorder = {
                fg = "#ea6962",
                bg = "#58dee8",
            },
        }
        require('telescope').load_extension('fzf')

        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
        vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
    end,
}
