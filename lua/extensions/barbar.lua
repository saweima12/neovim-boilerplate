--[[
  File: barbar.lua
  Description: Tabline plugin configurations
  See: https://github.com/romgrk/barbar.nvim
]]

cmd [[
  let g:barbar_auto_setup = v:true
]]

local barbar = require("barbar")

barbar.setup{
  icons = {
    buffer_index = true
  }
}
