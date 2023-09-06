local result = {}

local cfg = require("yaml-companion").setup{}
result = vim.tbl_extend("force", result, cfg)


return result
