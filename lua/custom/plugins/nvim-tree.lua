return {
  'nvim-tree/nvim-tree.lua',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    local nvimtree = require 'nvim-tree'

    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    nvimtree.setup {
      filters = {
        git_ignored = false,
      },
      sync_root_with_cwd = true,
    }

    vim.keymap.set('n', '<leader>te', '<cmd>NvimTreeToggle<CR>', { desc = '[T]oggle File [E]xplorer' })
  end,
}
