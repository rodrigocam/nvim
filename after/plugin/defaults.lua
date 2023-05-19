vim.keymap.set('i', 'jk', '<Esc>', {})
vim.keymap.set('i', 'kj', '<Esc>', {})
vim.keymap.set('i', 'JK', '<Esc>', {})
vim.keymap.set('i', 'KJ', '<Esc>', {})

vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

-- trick to remap telescope because lazyvim is running this file before the
-- definition at init.lua
local find_files = require('telescope.builtin').find_files

require('telescope.builtin').find_files = function()
  find_files({ previewer = false, find_command = { 'rg', '--files', '--hidden', '-g', '!.git' } })
end
