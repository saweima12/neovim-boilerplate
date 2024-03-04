local telescope = require("telescope")

local result = {}

result.on_attach = function(_, bufnr)
  -- load telescope extension.
  telescope.load_extension('goimpl')

  local addtag_ui = require("lsp.extension.add-tag")
  -- Add extension keybind.
  local opts = { buffer = bufnr }
  vim.keymap.set('n', '<leader>li', "<cmd>Telescope goimpl<CR>", opts)
  vim.keymap.set('n', '<leader>lt', function ()
    addtag_ui.Open()
  end , { buffer = bufnr, desc = "AddTags" })
end

local gopls_env = os.getenv("GOPLS_ENV")
if gopls_env == nil then
  gopls_env = "dev"
end

local tag_str = string.format("-tags=%s", gopls_env)

result.settings = {
   gopls = {
    hints = {
      assignVariableTypes = true,
      compositeLiteralFields = true,
      constantValues = true,
      functionTypeParameters = true,
      parameterNames =  true,
      rangeVariableTypes = true
    },
    buildFlags={tag_str},
  }
}

return result
