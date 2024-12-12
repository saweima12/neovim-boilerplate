-- Import lsp component
require"lsp.config.cmp"
require"lsp.config.mason"
require"lsp.config.null-ls"
require"lsp.config.clspkind"
require"lsp.config.clspsaga"
require"lsp.config.cdap"

-- Setup lspconfig
local lspconfig = require("lspconfig")
local mason_lspconfig = require("mason-lspconfig")


-- Setup every needed language server in lspconfig
local lspext_ptn = "lsp.lspext.%s"
local capabilities = require('cmp_nvim_lsp').default_capabilities()
mason_lspconfig.setup_handlers {
  function (server_name)
    local opt = { capabilities = capabilities, handlers=handlers }
    -- try to loading language extension.
    local require_path = string.format(lspext_ptn, server_name)
    local ok, ext = pcall(require, require_path)
    if ok and (type(ext) == "table") then
      opt = vim.tbl_extend("force", opt, ext)
    end

    -- setup lsp opt.
    lspconfig[server_name].setup(opt)
  end,
}

-- loading custom server.
require("lsp.lspext.protobuf_ls")

-- Register common lsp keybind
nm('K', '<cmd>lua vim.lsp.buf.hover()<CR>')            -- Hover object
nm('ga', '<cmd>lua vim.lsp.buf.code_action()<CR>')     -- Code actions
nm('gR', '<cmd>lua vim.lsp.buf.rename()<CR>')          -- Rename an object
nm('gF', '<cmd>Lspsaga finder<cr>', { desc = "Open finder"})     -- Go to declaration
nm('gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', { desc = "Go to declaration"})     -- Go to declaration
nm('gd', '<cmd>lua vim.lsp.buf.definition()<CR>', { desc = "Go to definition"})      -- Goto declarationa
nm('gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', { desc = "Go to implementation"})  -- Goto implementation
nm('<leader>lh', "<cmd>lua vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())<CR>", { desc = "Toggle the LspInlayHints" })
