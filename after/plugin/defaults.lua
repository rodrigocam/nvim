vim.keymap.set('i', 'jk', '<Esc>', {})
vim.keymap.set('i', 'kj', '<Esc>', {})
vim.keymap.set('i', 'JK', '<Esc>', {})
vim.keymap.set('i', 'KJ', '<Esc>', {})

vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

-- prevent newline eof
vim.opt.fixeol = false
vim.opt.fixendofline = false

vim.keymap.set('v', '<leader>1', '"ay', {})
vim.keymap.set('n', '<leader>1', '"ap', {})

vim.keymap.set('v', '<leader>2', '"xy', {})
vim.keymap.set('n', '<leader>2', '"xp', {})
