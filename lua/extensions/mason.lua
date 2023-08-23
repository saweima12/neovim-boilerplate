--[[
  File: mason.lua
  Description: Mason plugin configuration (with lspconfig)
  See: https://github.com/williamboman/mason.nvim
]]

local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local lspconfig = require("lspconfig")

mason.setup()
mason_lspconfig.setup({
  ensure_installed = {
    "lua_ls",             -- LSP for Lua language
    "tsserver",           -- LSP for Typescript and Javascript
    "emmet_ls",           -- LSP for Emmet (Vue, HTML, CSS)
    "cssls",              -- LSP for CSS
    "dockerls",           -- LSP for Docker
    "volar"               -- LSP for Vue
  }
});

local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- Setup every needed language server in lspconfig
mason_lspconfig.setup_handlers {
  function (server_name)
    local require_path = string.format("extensions.lspext.%s", server_name)

    lspconfig[server_name].setup {
      on_attach = function(client, bufnr)
        -- Check ext package exists.
        local ext = require(require_path)
        if (type(ext) ~= "table") then
          return
        end

        ext.attach(client, bufnr)
      end,
      capabilities = capabilities,
    }
  end,
}
