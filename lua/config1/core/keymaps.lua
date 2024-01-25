-- Already set in plugin file:
-- vim.api.nvim_set_keymap('n', '<leader>ee', ':NvimTreeToggle<CR>', { noremap = true, silent = true }),

-- Set leader key to space
vim.g.mapleader = " "

-- When in terminal, you can press esc to go into normal mode
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", { noremap = true })

-- Already set in plugin file:
-- vim.keymap.set('n', "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft)
-- vim.keymap.set('n', "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown)
-- vim.keymap.set('n', "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp)
-- vim.keymap.set('n', "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight)
-- vim.keymap.set('n', "<C-\\>", nvim_tmux_nav.NvimTmuxNavigateLastActive)
-- vim.keymap.set('n', "<C-Space>", nvim_tmux_nav.NvimTmuxNavigateNext)

-- Allows to move code up and down in visual mode using J and K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Allows to create a new tab using <leader>t
vim.keymap.set("n", "<leader>t", ":tabnew<CR>")

-- Allows to use telescope to find sessions using <leader>fs (Already in possession.nvim file)
-- You can use <leader>ff and <leader>fg to find files and grep respectively
vim.api.nvim_set_keymap("n", "<leader>fs", ":Telescope possession list<CR>", { noremap = true, silent = true })

-- Allows to clear highlights using <leader><space>
vim.api.nvim_set_keymap("n", "<Leader><Space>", ":noh<CR>", { noremap = true, silent = true })

-- Vertical resizing (width)
vim.api.nvim_set_keymap("n", "<C-Right>", ":vertical resize +1<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-Left>", ":vertical resize -1<CR>", { noremap = true, silent = true })

-- Horizontal resizing (height)
vim.api.nvim_set_keymap("n", "<C-Up>", ":resize +1<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-Down>", ":resize -1<CR>", { noremap = true, silent = true })
