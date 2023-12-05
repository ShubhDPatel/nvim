return {
    "luisiacc/gruvbox-baby",
    priority = 1000, 
   
    config = function()

        vim.g.gruvbox_baby_comment_style = "medium", -- Makes it so that comments are not italics

        vim.cmd([[colorscheme gruvbox-baby]])
    end,
}
