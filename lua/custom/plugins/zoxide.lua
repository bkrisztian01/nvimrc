local function navigate_to_current_file()
  local file_dir = vim.fn.expand '%:p:h'
  vim.cmd('Z ' .. file_dir)
end

return {
  'nanotee/zoxide.vim',
  config = function()
    vim.api.nvim_create_user_command('Zh', navigate_to_current_file, {
      desc = 'Navigate to the directory of the current file',
    })
  end,
}
