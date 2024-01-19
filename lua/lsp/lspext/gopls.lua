local telescope = require("telescope")


local result = {}

result.on_attach = function(client, bufnr)
  -- load telescope extension.
  telescope.load_extension('goimpl')

  -- Add inlayhints support.
  require("lsp-inlayhints").on_attach(client, bufnr, false)
  cmd [[hi default LspInlayHint guifg=#758094 guibg=#3a3a4e]]

  local addtag_ui = require("lsp.extension.add-tag")
  -- Add extension keybind.
  local opts = { buffer = bufnr }
  vim.keymap.set('n', '<leader>li', "<cmd>Telescope goimpl<CR>", opts)
  vim.keymap.set('n', '<leader>lt', function ()
    addtag_ui.Open()
  end , { buffer = bufnr, desc = "AddTags" })
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
