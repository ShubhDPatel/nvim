return {
    'eddyekofo94/gruvbox-flat.nvim',
    priority = 1000,
    enabled = true,
    config = function()
        vim.g.gruvbox_italic_comments = false -- Makes comments not italics
        vim.g.gruvbox_italic_keywords = false -- Makes keywords not italics

        vim.g.gruvbox_theme = { Identifier = { '#ea6962'} }
       
        vim.cmd([[colorscheme gruvbox-flat]])
    end,
}
