--[[
  File: neotree.lua
  Description: Configuration of neo-tree
  See: https://github.com/nvim-neo-tree/neo-tree.nvim)
]]

require "helpers.keyboard"

local neotree = require("neo-tree")

neotree.setup({
  close_if_last_window = true,
  name = {
    trailing_slash = true,
    use_git_status_colors = true,
    highlight = "NeoTreeFileName",
  },
  window = {
    width = 30,
  },
  filesystem = {
    follow_current_file = {
      enabled = true
    },
    use_libuv_file_watcher = true,
  },
})

-- # Register keybind
nm('<leader><leader>', '<cmd>Neotree toggle reveal left<CR>') -- Toggle file explorer
