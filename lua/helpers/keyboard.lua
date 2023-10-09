-- Alias for function, that set new keybindings
local map = vim.api.nvim_set_keymap

local default_opt = { noremap = true }

-- Normal mode keybinding setter
function nm(key, command, opts)
  opts = opts or {}
  opts = vim.tbl_extend("force", default_opt, opts)
  map('n', key, command, opts)
end

-- Input mode keybinding setter
function im(key, command, opts)
  opts = opts or {}
  opts = vim.tbl_extend("force", default_opt, opts)
  map('i', key, command, opts)
end

-- Visual mode keybinding setter
function vm(key, command, opts)
  opts = opts or {}
  opts = vim.tbl_extend("force", default_opt, opts)
  map('v', key, command, opts)
end

-- Terminal mode keybinding setter
function tm(key, command, opts)
  opts = opts or {}
  opts = vim.tbl_extend("force", default_opt, opts)
  map('t', key, command, opts)
end

