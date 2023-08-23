--[[
  File: cmp.lua
  Description: CMP plugin configuration (with lspconfig)
  See: https://github.com/hrsh7th/nvim-cmp
]]

local cmp = require('cmp')
local lspkind = require('lspkind')

cmp.setup{
  snippet = {
    expand = function(args)
      require'luasnip'.lsp_expand(args.body) -- Luasnip expand
    end,
  },


  -- Mappings for cmp
  mapping = {

    -- Autocompletion menu
    ['<C-p>'] = cmp.mapping(cmp.mapping.complete(), { 'i' }), -- C-p
    ['<C-y>'] = cmp.config.disable,                      -- Turn off autocomplete on <C-y>
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Turn on autocomplete on <CR>

    -- Use <C-e> to abort autocomplete
    ['<C-e>'] = cmp.mapping({
      i = cmp.mapping.abort(), -- Abort completion
      c = cmp.mapping.close(), -- Close completion window
    }),

    -- Use <C-up> and <C-down> to scroll docs.
    ['<C-up>'] = cmp.mapping(cmp.mapping.scroll_docs(-2)),
    ['<C-down>'] = cmp.mapping(cmp.mapping.scroll_docs(2)),

    -- Use <C-p> and <C-n> to navigate through completion variants
    ['<up>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 'c' }),
    ['<down>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 'c' }),
  },

  sources = cmp.config.sources({
    { name = 'nvim_lsp' },                -- LSP
    { name = 'nvim_lsp_signature_help' }, -- LSP for parameters in functions
    { name = 'nvim_lua' },                -- Lua Neovim API
    { name = 'luasnip' },                 -- Luasnip
    { name = 'buffer' },                  -- Buffers
    { name = 'path' },                    -- Paths
    { name = "emoji" },                   -- Emoji
  }, {
  }),
  formatting = {
    format = lspkind.cmp_format({
      mode = 'symbol_text', -- Show only symbol annotations
      maxwidth = 50,   -- Prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
    })
  },
}

-- Add snippets from Friendly Snippets
require("luasnip/loaders/from_vscode").lazy_load()

