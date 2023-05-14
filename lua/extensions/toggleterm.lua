--[[
  File: toggleterm.lua
  Description: Configuration of toggleterm.nvim
  See: https://github.com/akinsho/toggleterm.nvim
]]


local toggleterm = require("toggleterm")

toggleterm.setup {
  open_mapping = [[<c-\>]],
  hide_numbers = true, -- hide the number column in toggleterm buffers
  shade_filetypes = {},
  shade_terminals = true,
  start_in_insert = true,
  insert_mappings = true, -- whether or not the open mapping applies in insert mode
  persist_size = true,
  direction = 'float',
  close_on_exit = true, -- close the terminal window when the process exits
  shell = vim.o.shell, -- change the default shell
}

require "extensions.terminal.lazygit"
