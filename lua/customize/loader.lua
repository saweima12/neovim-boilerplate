require "customize/config/dap"


-- DiagnosticSign 
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- HighLight.
vim.api.nvim_set_hl(0, "FlashLabel", { fg="#FFFFFF", bg="#ff5f00", bold=true})
