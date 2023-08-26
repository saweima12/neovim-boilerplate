require("helpers/keyboard")

-- Setup dap
local dap = require("dap")
local dapui = require("dapui")
dapui.setup()

require("nvim-dap-virtual-text").setup()

dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open()
    vim.cmd("Neotree close")
end

dap.listeners.before.event_terminated["dapui_config"] = function()
    dapui.close()
end


dap.listeners.before.event_exited["dapui_config"] = function()
    dapui.close()
end

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(ev)
    local opts = { buffer = ev.buf }
    -- Attach Dap keybind
    vim.keymap.set("n", "<F5>", "<cmd>DapContinue<cr>", opts)
    vim.keymap.set("n", "<F10>", "<cmd>DapStepOver<cr>", opts)
    vim.keymap.set("n", "<F11>", "<cmd>DapStepInto<cr>", opts)
    vim.keymap.set("n", "<F12>", "<cmd>DapStepOut<cr>", opts)
    vim.keymap.set("n", "<leader>b", "<cmd>DapToggleBreakpoint<cr>", opts)
  end,
})
