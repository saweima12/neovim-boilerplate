local telescope = require("telescope")

local result = {}

result.attach = function(_, bufnr)
  telescope.load_extension('goimpl')

  local opts = { buffer = bufnr }
  vim.keymap.set('n', '<leader>li', "<cmd>Telescope goimpl<CR>", opts)
  print(client, bufnr)
end

return result



