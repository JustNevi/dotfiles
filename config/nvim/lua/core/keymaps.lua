local opt = { noremap = true, silent = true }

vim.keymap.set("v", "Y", '"+y', opt)
vim.api.nvim_set_keymap('v', '<Tab>', '>gv', { noremap = true, silent = true, desc = 'Indent visual selection' })
vim.api.nvim_set_keymap('v', '<S-Tab>', '<gv', { noremap = true, silent = true, desc = 'Dedent visual selection' })
