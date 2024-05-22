vim.g.mapleader = ' '

-- vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, { desc = 'Exit file' })

vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move line(s) up' })
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move line(s) down' })

vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]], { desc = 'Yank to global clipboard' })
vim.keymap.set({ 'n', 'v' }, '<leader>p', [["+p]], { desc = 'Paste from global clipboard' })
