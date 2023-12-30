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
