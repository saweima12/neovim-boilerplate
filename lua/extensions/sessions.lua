require('persisted').setup{}
require("telescope").load_extension("persisted")

local group = vim.api.nvim_create_augroup("PersistedHooks", {})
vim.api.nvim_create_autocmd({ "User" }, {
  pattern = "PersistedSavePre",
  group = group,
  callback = function()
    vim.api.nvim_exec_autocmds('User', {pattern = 'SessionSavePre'}) 
  end,
})
