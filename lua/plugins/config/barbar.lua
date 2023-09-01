--[[
  File: barbar.lua
  Description: Tabline plugin configurations
  See: https://github.com/romgrk/barbar.nvim
]]



require "helpers.keyboard"

local barbar = require("barbar")
barbar.setup{
  icons = {
    buffer_index = true
  }
}

-- # Register keybind.
-- ## Move to previous/next
nm('<A-,>', ':BufferPrevious<CR>')
nm('<A-.>', ':BufferNext<CR>')
-- ## Re-order to previous/next
nm('<A-<>', ':BufferMovePrevious<CR>')
nm('<A->>', ':BufferMoveNext<CR>')
-- ## Goto buffer in position...
nm('<A-1>', ':BufferGoto 1<CR>')
nm('<A-2>', ':BufferGoto 2<CR>')
nm('<A-3>', ':BufferGoto 3<CR>')
nm('<A-4>', ':BufferGoto 4<CR>')
nm('<A-5>', ':BufferGoto 5<CR>')
nm('<A-6>', ':BufferGoto 6<CR>')
nm('<A-7>', ':BufferGoto 7<CR>')
nm('<A-8>', ':BufferGoto 8<CR>')
nm('<A-9>', ':BufferGoto 9<CR>')
nm('<A-0>', ':BufferLast<CR>')
-- Close buffer
nm('<A-c>', ':BufferClose<CR>')
nm('<A-S-c>', ':BufferClose!<CR>')
