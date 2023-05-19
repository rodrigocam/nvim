require("neotest").setup({
  adapters = {
    require("neotest-python"),
    require("neotest-rust"),
    require("neotest-go"),
  },
})

vim.keymap.set('n', '<leader>tt', require('neotest').run.run, { desc = '[?] Run nearest tests' })

vim.keymap.set('n', '<leader>tf', function()
  require('neotest').run.run(vim.fn.expand('%'))
end, { desc = '[?] Run all tests in current file' })

vim.keymap.set('n', '<leader>ta', require("neotest").run.attach, { desc = '[?] Attach to nearest test' })

vim.keymap.set('n', '<leader>to', function()
  require("neotest").output.open({ enter = true })
end, {
  desc =
  '[?] Show output'
})
