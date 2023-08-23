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
      require "extensions.mason"
    end
  },
  -- }}}

  -- Neo Tree {{{
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require "extensions.neotree"
    end
  },
  -- }}}

  -- Telescope {{{
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.2',
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "ahmedkhalf/project.nvim",
      'nvim-lua/popup.nvim',
    },
    config = function()
      require "extensions.ctelescope"
    end
  },
  -- }}}

  -- CMP {{{
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
      require "extensions.cmp"
    end
  },
  -- }}}

  -- LSP Kind {{{
  {
    'onsails/lspkind-nvim',
    lazy = true,
    config = function()
      require "extensions.clspkind"
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
      require "extensions.trouble"
    end,
  },
  -- }}}

  -- TreeSitter {{{
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

  -- StatusBar -> Lualine {{{
  {
    "nvim-lualine/lualine.nvim",
    requires = { 'nvim-tree/nvim-web-devicons', opt = true },
    config = function()
      require "extensions.lualine"
    end
  },
  -- }}}

-- Tabline -> Barbar {{{
{
 'romgrk/barbar.nvim',
 dependencies = {
   'lewis6991/gitsigns.nvim',     -- OPTIONAL: for git status
   'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
 },
 version = "^1.6.5",
 config = function()
   require "extensions.barbar"
 end
},

  -- }}}

  -- Comment {{{
  {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  },
  -- }}}

  -- Terminal -> ToggleTerm {{{
  {
    'akinsho/toggleterm.nvim',
    config = function()
      require "extensions.toggleterm"
    end
  },
  -- }}}

  -- Outline {{{
  {
    'simrat39/symbols-outline.nvim',
    config = function()
      require "extensions.symbols-outline"
    end
  },

  -- }}}

-- Cursorline {{{
  {
    'yamatsum/nvim-cursorline',
    config = function()
      require "extensions.nvim-cursorline"
    end
  },

-- }}}

  -- Hop {{{
  {
    'phaazon/hop.nvim',
    branch = "v2",
    config = function()
      require "extensions.hop"
    end
  },
  -- }}}

  -- Null-ls {{{
  {
    "jose-elias-alvarez/null-ls.nvim",
    requires = { "nvim-lua/plenary.nvim" },
    config = function()
      require "extensions.null-ls"
    end
  },
  -- }}}

  -- Which Keys {{{
  {
    "folke/which-key.nvim",
    config = function()
      require "extensions.which-key"
    end
  },
  -- }}}

  -- Nvim-AutoParis {{{
  {
    "windwp/nvim-autopairs",
    config = function ()
      require "extensions.nvim-autopairs"
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
      require "extensions.gopher"
    end
  },

  {
    'edolphin-ydf/goimpl.nvim',
  },
--- }}}

-- todo-comments {{{
{
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
},
-- }}}

-- Mini.nvim {{{
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
-- }}}

-- Utilities - JABS {{{
{
  'matbme/JABS.nvim',
  config = function()
    require 'jabs'.setup{}
  end
},
-- }}}

-- Utiities - projectView {{{
{
  "ahmedkhalf/project.nvim",
  config = function()
    require("project_nvim").setup{}
  end
},
-- }}}

}

-- vim:tabstop=2 shiftwidth=2 expandtab syntax=lua foldmethod=marker foldlevelstart=0 foldlevel=0
