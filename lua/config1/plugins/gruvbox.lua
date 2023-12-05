return {
    'eddyekofo94/gruvbox-flat.nvim',
    priority = 1000,
    enabled = true,
    config = function()
        vim.gruvbox_italic_comments = false -- Makes comments not italics
        vim.cmd([[colorscheme gruvbox-flat]])
    end,
}
