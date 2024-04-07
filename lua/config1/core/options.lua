vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smarttab = true
vim.opt.softtabstop = 4
vim.opt.termguicolors = true
vim.o.wrap = false
vim.opt.smartindent = true
--vim.opt.signcolumn = "yes"
vim.opt.laststatus = 3

-- Set listchars globally
vim.opt.list = true
vim.opt.listchars = { space = "·", tab = "> ", extends = "|" }
vim.opt.clipboard = "unnamedplus"

-- Sets incsearch and hlsearch on
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- makes it so whenever : is typed, it doesn't reindent
vim.cmd([[autocmd FileType cpp setlocal indentkeys-=:]])
vim.cmd([[autocmd FileType c setlocal indentkeys-=:]])

-- Allows to comment using control + / in visual mode
vim.cmd([[
augroup visual_commenting
    autocmd!
    autocmd FileType c,cpp,java,rust  let b:comment_symbol = '//'
    autocmd FileType vim              let b:comment_symbol = '"'
    autocmd FileType sh,vim,python    let b:comment_symbol = '#'
    autocmd FileType tex              let b:comment_symbol = '%'
    autocmd BufEnter * silent! vnoremap <silent> <C-_> :<C-u>keepp '<,'>s@^@\=b:comment_symbol<CR>
    autocmd BufEnter * silent! exec 'vnoremap <silent> <C-?> :<C-u>keepp ''<,''>s@^' . b:comment_symbol . '@<CR>'
augroup END
]])

-- Set lazyredraw
vim.opt.lazyredraw = true

local lastplace = vim.api.nvim_create_augroup("LastPlace", {})
vim.api.nvim_clear_autocmds({ group = lastplace })
vim.api.nvim_create_autocmd("BufReadPost", {
    group = lastplace,
    pattern = { "*" },
    desc = "remember last cursor place",
    callback = function()
        local mark = vim.api.nvim_buf_get_mark(0, '"')
        local lcount = vim.api.nvim_buf_line_count(0)
        if mark[1] > 0 and mark[1] <= lcount then
            pcall(vim.api.nvim_win_set_cursor, 0, mark)
        end
    end,
})

