local configs = require("lspconfig.configs")
local util = require('lspconfig.util')

configs["protobuf-language-server"] = {
    default_config = {
        cmd = { 'protobuf-language-server' },
        filetypes = { 'proto', 'cpp' },
        root_fir = util.root_pattern('.git'),
        single_file_support = true,
        settings = {},
    }
}

-- then we can continue as we do with official servers
local lspconfig = require('lspconfig')
lspconfig["protobuf-language-server"].setup {}

local result = {}
return result
