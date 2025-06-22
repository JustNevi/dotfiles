local opt = { noremap = true, silent = true }

-- INSERT --
vim.keymap.set('i', '<C-s>', '<Esc>:w<CR>', { desc = 'Move to left window' })

-- NORMAL --
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Move to left window' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Move to right window' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Move to down window' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Move to up window' })
vim.keymap.set('n', 'J', 'jzz', { desc = 'Move cursor up and center' })
vim.keymap.set('n', 'K', 'kzz', { desc = 'Move cursor down and center' })
vim.keymap.set('n', '<C-s>', ':w<CR>', { desc = 'Save' })
vim.keymap.set('n', '<C-q><C-q>', ':q<CR>:q<CR>', { desc = 'Quit' })

-- VISUAL -- 
vim.keymap.set("v", "Y", '"+y', { desc = 'Copy to clipboard'})
vim.keymap.set('v', '<Tab>', '>gv', { desc = 'Indent visual selection' })
vim.keymap.set('v', '<S-Tab>', '<gv', { desc = 'Dedent visual selection' })
