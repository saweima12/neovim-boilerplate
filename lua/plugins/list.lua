--[[
  File: plugins.lua
  Description: This file needed for loading plugin list into lazy.nvim and loading plugins
  Info: Use <zo> and <zc> to open and close foldings
  See: https://github.com/wbthomason/packer.nvim
]]
require "helpers.globals"

return {
-- # Theme {{{
{ "sainnhe/edge" },
-- }}} 

-- # LSP {{{
-- Language server protocol support.
{
  "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    config = function()
      require("chatgpt").setup()
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    }
},


-- LspInstaller -> Mason
{
  "williamboman/mason.nvim",
  build = ":MasonUpdate",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }
},


-- Autocomplete -> Cmp
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

-- Fileformater -> Null-ls
{
  "nvimtools/none-ls.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
},

-- Debugger -> Dap
{
  'mfussenegger/nvim-dap',
  dependencies = {
    'theHamsta/nvim-dap-virtual-text',
    "rcarriga/nvim-dap-ui",
  },
},

-- Tips & Extension 
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


{
  "someone-stole-my-name/yaml-companion.nvim",
  dependencies = {
    "neovim/nvim-lspconfig",
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  }
},

{ "nvim-neotest/nvim-nio" },

-- Cpp support
{
  "dhananjaylatkar/cscope_maps.nvim",
  dependencies = {
    "folke/which-key.nvim", -- optional [for whichkey hints]
    "nvim-telescope/telescope.nvim", -- optional [for picker="telescope"]
    "ibhagwan/fzf-lua", -- optional [for picker="fzf-lua"]
    "echasnovski/mini.pick", -- optional [for picker="mini-pick"]
    "nvim-tree/nvim-web-devicons", -- optional [for devicons in telescope, fzf or mini.pick]
  }
},

{
    "Badhi/nvim-treesitter-cpp-tools",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
},


-- }}}

-- # UI Extension {{{
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

-- Dashboard 
{
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  dependencies = { 'nvim-tree/nvim-web-devicons' }
},

-- StatusLine -> Lualine 
{
  "nvim-lualine/lualine.nvim",
  dependencies = { 'nvim-tree/nvim-web-devicons' },
},
-- Tabline -> Barbar 
-- { 'romgrk/barbar.nvim',   version = "^1.7.0" },
{'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},

-- KeyTips -> WhichKeys 
{ "folke/which-key.nvim" },
-- MessagePanel -> Trouble
{
  "folke/trouble.nvim",
  dependencies = "nvim-tree/nvim-web-devicons",
},
-- SearchReplace -> Spectre
{
 "nvim-pack/nvim-spectre",
 dependencies = "nvim-lua/plenary.nvim",
},

-- DiffView -> Telescope-diff & Diffview
{
  "jemag/telescope-diff.nvim",
  dependencies = "nvim-telescope/telescope.nvim"
},
{ "sindrets/diffview.nvim" },


-- Terminal -> ToggleTerm 
{'akinsho/toggleterm.nvim' },


-- TodoList -> TodoComments
{
  "folke/todo-comments.nvim",
  dependencies =  "nvim-lua/plenary.nvim" ,
},

-- Notify -> Noice
{
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
},

-- Improve UI 
{ 'stevearc/dressing.nvim' },

-- }}}

-- # Utilities {{{
{
  "hedyhli/outline.nvim",
  lazy = true,
},

-- Breadcrumb & finder
{
  "glepnir/lspsaga.nvim",
  lazy = true,
},

-- GitTips -> GitSigns
{ 'lewis6991/gitsigns.nvim' },
{ "FabijanZulj/blame.nvim" },


-- TreeSitter -> Nvim-Treesitter
{
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" },
},

-- Cursorline -> NvimCursorline 
{'yamatsum/nvim-cursorline' },

-- Utilities -> NvimWindowPicker
{
  's1n7ax/nvim-window-picker',
  name = 'window-picker',
  event = 'VeryLazy',
  version = '2.*',
},

-- Utilities -> Flash & acceleratedJK 
{ "folke/flash.nvim", event = "VeryLazy"},
{'rainbowhxch/accelerated-jk.nvim' },

-- Utilities -> Nvim-AutoParis
{
  "windwp/nvim-autopairs",
},

-- Utilities -> Mini.nvim 
{'echasnovski/mini.indentscope', version = '*' },
{'echasnovski/mini.surround', version = '*' },
{'echasnovski/mini.move', version = '*' },
{'echasnovski/mini.comment', version = '*' },
{'echasnovski/mini.bufremove', version = '*' },

-- Utilities -> BetterEscape
{"max397574/better-escape.nvim" },

-- }}}

-- # Golang improve {{{
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


-- }}}

-- # NeovimLua {{{
{ "folke/neodev.nvim", opts = {} }
-- }}}

}

