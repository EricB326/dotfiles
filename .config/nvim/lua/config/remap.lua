vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set('n', '<leader>w', '<cmd>write<CR>', { desc = '[W]rite file changes.' })
vim.keymap.set('n', '<leader>q', '<cmd>quit<CR>', { desc = '[Q]uit.' })
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format, { desc = '[L]anguage [F]ormat the file.' })
vim.keymap.set('n', '<leader>lz', '<cmd>Lazy<CR>', { desc = 'Open [L]a[Z]y dialogue.' })

vim.keymap.set('n', '<leader>re', vim.cmd.Ex, { desc = '[R]eturn to the [E]xplorer.' })

vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
