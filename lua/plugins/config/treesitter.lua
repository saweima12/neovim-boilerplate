--[[
  File: treesitter.lua
  Description: Configuration of tree-sitter
  See: https://github.com/tree-sitter/tree-sitter
]]
require'nvim-treesitter.configs'.setup {

  -- Needed parsers
  ensure_installed = {
    "bash",
    "lua",
    "regex",
    "markdown",
    "markdown_inline",
    "typescript",
    "javascript",
    "go"
  },

  -- Install all parsers synchronously
  sync_install = false,

  highlight = {
    -- Enabling highlight for all files
    enable = true,
    disable = {},
  },

  indent = {
    -- Disabling indentation for all files
    enable = false,
    disable = {},
  }
}
