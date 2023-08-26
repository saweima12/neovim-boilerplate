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
    local opt = {
      capabilities = capabilities,
    }

    -- try to loading language extension.
    local require_path = string.format("extensions.lspext.%s", server_name)
    local ok, ext = pcall(require, require_path)
    if ok and (type(ext) == "table") then
      opt = vim.tbl_extend("force", opt, ext)
    end

    -- setup lsp opt.
    lspconfig[server_name].setup(opt)
  end,
}
