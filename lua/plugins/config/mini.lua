
-- Initialize mini plugin
require("mini.indentscope").setup{}
require("mini.surround").setup{}
require("mini.bracketed").setup{
  oldfile = { suffix = ''},
  window = { suffix = ''},
  file = { suffix = ''},
  jump = { suffix = ''},
  yank = { suffix = ''}
}
require("mini.move").setup{}
require("mini.comment").setup{}

