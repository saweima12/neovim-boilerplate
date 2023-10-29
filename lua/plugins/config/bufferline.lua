--[[
  File: bafferline.lua
  Description: Tabline plugin configurations
  See:https://github.com/akinsho/bufferline.nvim 
]]


require "helpers.keyboard"

local bufferline = require("bufferline")

nm('<A-1>', ':BufferLineGoToBuffer 1<CR>')
nm('<A-2>', ':BufferLineGoToBuffer 2<CR>')
nm('<A-3>', ':BufferLineGoToBuffer 3<CR>')
nm('<A-4>', ':BufferLineGoToBuffer 4<CR>')
nm('<A-5>', ':BufferLineGoToBuffer 5<CR>')
nm('<A-6>', ':BufferLineGoToBuffer 6<CR>')
nm('<A-7>', ':BufferLineGoToBuffer 7<CR>')
nm('<A-8>', ':BufferLineGoToBuffer 8<CR>')
nm('<A-9>', ':BufferLineGoToBuffer 9<CR>')

nm('<A-c>', function ()
  MiniBufremove.delete()
end)

nm('[b', ':BufferLineCyclePrev<CR>')
nm(']b', ':BufferLineCycleNext<CR>')

nm('[B', ':BufferLineCyclePrev<CR>')
nm(']B', ':BufferLineCycleNext<CR>')
-- nm('<A-c>', ':BufferLinePickClose<CR>')

bufferline.setup{}
