--[[
  File: plugins.lua
  Description: This file needed for loading plugin list into lazy.nvim and loading plugins
  Info: Use <zo> and <zc> to open and close foldings
  See: https://github.com/wbthomason/packer.nvim
]]
require "helpers/globals"

return {
  -- Mason {{{
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
    },
    config = function()
      require "clsp.mason"
    end
  },
  -- }}}

-- LSP & Cmp & Dap {{{
  {
    'hrsh7th/nvim-cmp',
    event = "InsertEnter",
    dependencies = {
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-emoji',
      'hrsh7th/cmp-nvim-lsp-signature-help',
      'hrsh7th/cmp-nvim-lua',
      'rafamadriz/friendly-snippets',
    },
    config = function()
      require "clsp.cmp"
    end
  },

  {
    'mfussenegger/nvim-dap',
    dependencies = {
      'theHamsta/nvim-dap-virtual-text',
      "rcarriga/nvim-dap-ui",
    },
    config = function ()
      require("clsp.dap")
    end
  },

  {
    'onsails/lspkind-nvim',
    lazy = true,
    config = function()
      require "clsp.clspkind"
    end
  },

  {
    "lvimuser/lsp-inlayhints.nvim",
    lazy = true,
    branch = "anticonceal",
    config = function()
      require("lsp-inlayhints").setup{}
    end
  },


  {
    'leoluz/nvim-dap-go',
    config = function()
      require('dap-go').setup()
    end
  },
-- }}}

-- Null-ls {{{
  {
    "jose-elias-alvarez/null-ls.nvim",
    requires = { "nvim-lua/plenary.nvim" },
    config = function()
      require "clsp.null-ls"
    end
  },
-- }}}

-- Explorer -> NeoTree {{{
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require "extensions.explorer"
    end
  },
-- }}}

-- Finder -> Telescope {{{
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.2',
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      'nvim-lua/popup.nvim',
      "ahmedkhalf/project.nvim",
    },
    config = function()
      require "extensions.fuzzyfinder"
    end
  },
-- }}}

-- GitSigns {{{
  {
    'lewis6991/gitsigns.nvim',
    lazy = false,
    config = function()
      require "extensions.gitsigns"
    end
  },
-- }}}

-- Trouble {{{
  {
    "folke/trouble.nvim",
    lazy = false,
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require("trouble").setup{}
    end,
  },
-- }}}

-- TreeSitter -> Nvim-Treesitter {{{
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      require "extensions.treesitter"
    end
  },
-- }}}

-- Theme -> Edge {{{
  {
    "sainnhe/edge",
    lazy = false,
    config = function()
      require "extensions.colorscheme.edge"
    end
  },
-- }}}

-- Dashboard {{{

  {
    'glepnir/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require("extensions.dashboard")
    end,
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },
-- }}}

-- StatusLine -> Lualine {{{
  {
    "nvim-lualine/lualine.nvim",
    requires = { 'nvim-tree/nvim-web-devicons', opt = true },
    config = function()
      require "extensions.statusline"
    end
  },
-- }}}

-- Tabline -> Barbar {{{
  {
   'romgrk/barbar.nvim',
   dependencies = {
   },
   version = "^1.6.5",
   config = function()
     require "extensions.tabline"
   end
  },
-- }}}

-- BufferView -> JABS {{{
  {
    'matbme/JABS.nvim',
    config = function()
      require 'jabs'.setup{}
    end
  },
-- }}}

-- Outline -> SymbolsOutline {{{
  {
    'simrat39/symbols-outline.nvim',
    config = function()
      require("symbols-outline").setup{}
    end
  },
-- }}}

-- KeyTips -> WhichKeys {{{
  {
    "folke/which-key.nvim",
    config = function()
      require "extensions.which-key"
    end
  },
-- }}}

-- TodoList -> TodoComments {{{
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
-- }}}

-- Terminal -> ToggleTerm {{{
  {
    'akinsho/toggleterm.nvim',
    config = function()
      require "extensions.terminal"
    end
  },
-- }}}

-- Cursorline -> NvimCursorline {{{
  {
    'yamatsum/nvim-cursorline',
    config = function()
      require "extensions.cursorline"
    end
  },
-- }}}

-- Utilities -> NvimWindowPicker {{{
  {
    's1n7ax/nvim-window-picker',
    name = 'window-picker',
    event = 'VeryLazy',
    version = '2.*',
    config = function()
      require('extensions.window-picker')
    end,
  },
-- }}}

-- Utilities -> Hop & acceleratedJK {{{
  {
    'phaazon/hop.nvim',
    branch = "v2",
    config = function()
      require("hop").setup{}
    end
  },

  {
    'rainbowhxch/accelerated-jk.nvim'
  },
-- }}}

-- Utilities -> Nvim-AutoParis {{{
  {
    "windwp/nvim-autopairs",
    config = function ()
      require("nvim-autopairs").setup{}
    end
  },
-- }}}

-- Utilities -> Mini.nvim {{{
  {
    'echasnovski/mini.indentscope', version = '*',
    config = function()
      require("mini.indentscope").setup{}
    end
  },
  {
    'echasnovski/mini.surround', version = '*',
    config = function()
      require("mini.surround").setup{}
    end
  },
  {
    'echasnovski/mini.bracketed', version = '*',
    config = function()
      require("mini.bracketed").setup{}
    end
  },
  {
    'echasnovski/mini.move', version = '*',
    config = function()
      require("mini.move").setup()
    end
  },
  {
   'echasnovski/mini.comment', version = '*',
    config = function()
      require("mini.comment").setup()
    end
  },
-- }}}

-- Utiities -> BetterEscape {{{
  {
    "max397574/better-escape.nvim",
    config = function()
      require"extensions.better-escape"
    end,
  },
-- }}}

-- Utilities -> SearchRelace {{{
 {
   "nvim-pack/nvim-spectre",
   dependencies = {
    "nvim-lua/plenary.nvim"
   },
 },
-- }}}

-- Improve UI {{{
{
  'stevearc/dressing.nvim',
},


{
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
  config = function()
    require("extensions.noice")
  end
},
-- }}}

-- Gopher {{{
  {
    "olexsmir/gopher.nvim",
    requires = { -- dependencies
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    build = function ()
      cmd [[silent! GoInstallDeps]]
    end,
    config = function ()
      require("gopher").setup{}
    end
  },

  {
    'edolphin-ydf/goimpl.nvim',
  },
-- }}}


}

-- vim:tabstop=2 shiftwidth=2 expandtab syntax=lua foldmethod=marker foldlevelstart=0 foldlevel=0
