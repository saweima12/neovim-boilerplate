--[[
  File: plugins.lua
  Description: This file needed for loading plugin list into lazy.nvim and loading plugins
  Info: Use <zo> and <zc> to open and close foldings
  See: https://github.com/wbthomason/packer.nvim
]]
require "helpers.globals"

return {
  -- Mason
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
    }
  },

-- LSP & Cmp & Dap
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
  },

  {
    "jose-elias-alvarez/null-ls.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
  },


  {
    'mfussenegger/nvim-dap',
    dependencies = {
      'theHamsta/nvim-dap-virtual-text',
      "rcarriga/nvim-dap-ui",
    },
  },

  {
    'onsails/lspkind-nvim',
    lazy = true,
  },

  {
    "lvimuser/lsp-inlayhints.nvim",
    lazy = true,
    branch = "anticonceal",
  },

  {'leoluz/nvim-dap-go' },


-- Explorer -> NeoTree 
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    },
  },

-- Finder -> Telescope
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.2',
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      'nvim-lua/popup.nvim',
      "ahmedkhalf/project.nvim",
    },
  },

-- GitSigns
  {
    'lewis6991/gitsigns.nvim',
    lazy = false,
  },

-- Trouble
  {
    "folke/trouble.nvim",
    lazy = false,
    dependencies = "nvim-tree/nvim-web-devicons",
  },

-- TreeSitter -> Nvim-Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
  },

-- Theme -> Edge 
  {
    "sainnhe/edge",
    lazy = false,
  },

-- Dashboard 
  {
    'glepnir/dashboard-nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },

-- StatusLine -> Lualine 
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { 'nvim-tree/nvim-web-devicons' },
  },

-- Tabline -> Barbar 
  {
   'romgrk/barbar.nvim',
   dependencies = {
   },
   version = "^1.6.5",
  },

-- BufferView -> JABS 
  { 'matbme/JABS.nvim' },

-- Outline -> SymbolsOutline
  {
    'simrat39/symbols-outline.nvim',
  },

-- KeyTips -> WhichKeys 
  {
    "folke/which-key.nvim",
  },

-- TodoList -> TodoComments
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
  },

-- Terminal -> ToggleTerm 
  {'akinsho/toggleterm.nvim' },

-- Cursorline -> NvimCursorline 
  {'yamatsum/nvim-cursorline' },

-- Utilities -> NvimWindowPicker
  {
    's1n7ax/nvim-window-picker',
    name = 'window-picker',
    event = 'VeryLazy',
    version = '2.*',
  },

-- Utilities -> Hop & acceleratedJK 
  {
    'phaazon/hop.nvim',
    branch = "v2",
  },

  {'rainbowhxch/accelerated-jk.nvim' },

-- Utilities -> Nvim-AutoParis
  {
    "windwp/nvim-autopairs",
  },

-- Utilities -> Mini.nvim 
  {'echasnovski/mini.indentscope', version = '*' },
  {'echasnovski/mini.surround', version = '*' },
  {'echasnovski/mini.bracketed', version = '*' },
  {'echasnovski/mini.move', version = '*' },
  {'echasnovski/mini.comment', version = '*' },

-- Utilities -> BetterEscape
  {"max397574/better-escape.nvim" },

-- Utilities -> SearchReplace 
 {
   "nvim-pack/nvim-spectre",
   dependencies = {
    "nvim-lua/plenary.nvim"
   },
 },

-- Utilities -> DiffView
  {"sindrets/diffview.nvim" },
  {
    "jemag/telescope-diff.nvim",
    dependencies = {
      { "nvim-telescope/telescope.nvim" },
    }
  },

-- Improve UI 
  { 'stevearc/dressing.nvim' },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
  },


-- Gopher  
  {
    "olexsmir/gopher.nvim",
    dependencies = { -- dependencies
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    build = function ()
      cmd [[silent! GoInstallDeps]]
    end,
  },

  { 'edolphin-ydf/goimpl.nvim' },


}

-- vim:tabstop=2 shiftwidth=2 expandtab syntax=lua foldmethod=marker foldlevelstart=0 foldlevel=0
