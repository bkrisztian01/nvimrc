return {
  'voldikss/vim-floaterm',
  config = function()
    vim.g.floaterm_shell = 'pwsh.exe'

    vim.keymap.set('n', '<leader>tt', '<cmd>FloatermToggle<CR>', { desc = '[T]oggle [T]erminal' })
  end,
}
