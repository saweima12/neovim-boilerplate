local M = {}

function M.Open()
  vim.ui.input({
    prompt = "AddTag",
    default = "json -add-options json=omitempty",
    highlight = function(input)
      if string.len(input) > 8 then
        return { { 0, 8, "InputHighlight" } }
      else
        return {}
      end
    end,
  }, function(input)
    if input then
      vim.cmd("GoTagAdd " .. input)
    end
  end)
end


return M
