-- Initialize ColorSchema
require "plugins.colorscheme.edge"

-- Initialzie plugin conifg.
require "plugins.config.bufferline"
require "plugins.config.better-escape"
require "plugins.config.cnoice"
require "plugins.config.ctoggleterm"
require "plugins.config.ctelescope"
require "plugins.config.cursorline"
require "plugins.config.dashboard"

-- Git support
require "plugins.config.gitsigns"

require "plugins.config.lualine"
require "plugins.config.neotree"
require "plugins.config.spectre"
require "plugins.config.treesitter"
require "plugins.config.which-key"
require "plugins.config.window-picker"
require "plugins.config.mini"
require "plugins.config.cflash"

require "plugins.config.cgpt"

-- Initialize extension terminal
require "plugins.terminal.lazygit"

-- Initialize plugin setup
require("trouble").setup{}
require("jabs").setup{}
require("outline").setup {}
require("nvim-cursorline").setup{}
require("nvim-autopairs").setup {}
require("lsp-inlayhints").setup{}
require("dap-go").setup{}
require("neodev").setup{}
require("todo-comments").setup{}
