--[[
  File: which-key.lua
  Description: Configuration of which-key.nvim
  See: https://github.com/folke/which-key.nvim
]]
local which_key = require("which-key")

vim.o.timeout = true
vim.o.timeoutlen = 500

which_key.setup {}
