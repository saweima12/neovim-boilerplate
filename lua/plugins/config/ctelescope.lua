--[[
  File: telescope.lua
  Description: Telescope plugin configuration
  See: https://github.com/nvim-telescope/telescope.nvim
]]
require "helpers.keyboard"

local telescope = require("telescope")
require("project_nvim").setup{
  manual_mode = true
}

telescope.setup()
telescope.load_extension('projects')
telescope.load_extension("diff")


-- Register keybinds
nm('<leader>tp', '<cmd>Telescope projects<CR>')              -- Show recent files
nm('<leader>te', '<cmd>Telescope git_files<CR>')             -- Search for a file in project
nm('<leader>to', '<cmd>Telescope find_files<CR>')            -- Search for a file (ignoring git-ignore)
nm('<leader>tb', '<cmd>Telescope git_branches<CR>')          -- Show git branches
nm('<leader>ts', '<cmd>Telescope persisted<CR>')             -- Find a string in project
nm('<leader>ff', '<cmd>Telescope live_grep<CR>')             -- Find a string in project

vim.keymap.set("n", "<leader>tD", function()
  telescope.extensions.diff.diff_files({ hidden = true })
end, { desc = "Telescope diff_files" })
vim.keymap.set("n", "<leader>td", function()
  telescope.extensions.diff.diff_current({ hidden = true })
end, { desc = "Telescope diff_current" })

nm('<leader>ta', '<cmd>Telescope<CR>')                               -- Show all commands

