--[[
  File: telescope.lua
  Description: Telescope plugin configuration
  See: https://github.com/nvim-telescope/telescope.nvim
]]
local telescope = require("telescope")
require("project_nvim").setup{
  manual_mode = true
}

telescope.setup()
telescope.load_extension('projects')
