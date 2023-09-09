local telescope = require("telescope")


local result = {}

result.on_attach = function(client, bufnr)

  require"lsp.config.clspsaga"
  -- load telescope extension.
  telescope.load_extension('goimpl')

  -- Add inlayhints support.

  require("lsp-inlayhints").on_attach(client, bufnr, false)
  cmd [[hi default LspInlayHint guifg=#758094 guibg=#3a3a4e]]

  -- Add extension keybind.
  local opts = { buffer = bufnr }
  vim.keymap.set('n', '<leader>li', "<cmd>Telescope goimpl<CR>", opts)
end

result.settings = {
   gopls = {
    hints = {
      assignVariableTypes = true,
      compositeLiteralFields = true,
      constantValues = true,
      functionTypeParameters = true,
      parameterNames =  true,
      rangeVariableTypes = true
    }
  }
}

return result
