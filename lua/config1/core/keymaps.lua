-- Already set in plugin file:
-- vim.keymap.set("c", "ee", "NvimTreeToggle<CR>"), -- Toggle file explorer on 'ee' key press

-- Set leader key to space
vim.g.mapleader = ' '

-- When in terminal, you can press esc to go into normal mode
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true })

-- Already set in plugin file:
-- vim.keymap.set('n', "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft)
-- vim.keymap.set('n', "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown)
-- vim.keymap.set('n', "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp)
-- vim.keymap.set('n', "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight)
-- vim.keymap.set('n', "<C-\\>", nvim_tmux_nav.NvimTmuxNavigateLastActive)
-- vim.keymap.set('n', "<C-Space>", nvim_tmux_nav.NvimTmuxNavigateNext)

-- Allows to move code up and down in visual mode using J and K
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Allows to create a new tab using <leader>t
vim.keymap.set('n', '<leader>t', ':tabnew<CR>')
