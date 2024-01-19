local lualine = require("lualine")

-- customFucntion
local function show_macro_recording()
    local recording_register = vim.fn.reg_recording()
    if recording_register == "" then
        return ""
    else
        return "Recording @" .. recording_register
    end
end

local function selection_count()
	local isVisualMode = fn.mode():find("[Vv]")
	if not isVisualMode then return "" end
	local starts = fn.line("v")
	local ends = fn.line(".")
	local lines = starts <= ends and ends - starts + 1 or starts - ends + 1
	return tostring(lines) .. "L " .. tostring(fn.wordcount().visual_chars) .. "C"
end


lualine.setup {
  extensions = { "neo-tree", "toggleterm" },
  sections = {
    lualine_x = {
      {
        "macro-recording",
        fmt = show_macro_recording,
        color = { fg = "#ff9e64" },
      },
      "encoding",
      "formattype",
      "filetype"
    },
    lualine_y = {
      "progress",
      { selection_count },
    }
  },
}
