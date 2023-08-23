local telescope = require("telescope")

local result = {}

result.attach = function(client, bufnr)
  telescope.load_extension('goimpl')

  local opts = { buffer = bufnr }
  vim.keymap.set('n', '<leader>tg', "<cmd>Telescope goimpl<CR>", opts)
  print(client, bufnr)
end

return result



