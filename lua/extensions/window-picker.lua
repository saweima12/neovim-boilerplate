require "helpers/keyboard"

local picker = require("window-picker")
picker.setup()

function PickWindow()
  local wm_num = picker.pick_window()
  if wm_num then
    vim.api.nvim_set_current_win(wm_num)
  end
end

nm("<c-w>p", "<cmd>lua PickWindow()<CR>")
