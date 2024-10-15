local result = {}
local dap = require("dap")


result.cmd = {
    "clangd",
    "--background-index",
    "--clang-tidy",
    "--completion-style=detailed",
    "--header-insertion=iwyu",
    "--pch-storage=memory",
}

result.on_attach = function (_client, _bufnr)
  dap.adapters.lldb = {
    type = 'executable',
    command = '/usr/bin/lldb-vscode', -- adjust as needed, must be absolute path
    name = 'lldb'
  }

  dap.configurations.c = {
    {
      name = 'Launch',
      type = 'lldb',
      request = 'launch',
      program = function()
        return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
      end,
      cwd = '${workspaceFolder}',
      stopOnEntry = false,
      args = {},
    },
  }

  local opts = { buffer = _bufnr, noremap = true, silent = true }
  vim.keymap.set('v', '<leader>li', ":TSCppDefineClassFunc<CR>", opts)
end

result.on_init = function(_client, _result)
  require("nt-cpp-tools").setup{}
end

result.filetypes = { "c", "cc", "cpp", "objc", "objcpp", "cuda"}
return result
