--[[
  File: gitsigns.lua
  Description: Configuration of gitsigns
  See: https://github.com/lewis6991/gitsigns.nvim
]]

require "helpers.keyboard"

local gitsigns = require('gitsigns')

gitsigns.setup({
  current_line_blame = false,
  current_line_blame_opts = {
    virt_text = true,
    virt_text_pos = 'right_align',
    delay = 1000,
    ignore_whitespace = false,
  },
})

-- Register keybinds
nm("<leader>gb", "<cmd>Gitsigns blame_line<CR>")
