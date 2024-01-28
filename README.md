# Neovim-Boilerplate

My neovim configuration file, cloned from [tokiory/neovim-boilerplate](https://github.com/tokiory/neovim-boilerplate).

## Requipments

- neovim v0.10+ - nightly build (for inlayhints)
- ripgrep (for telescope search)
- nodejs (for lsp)
- lazygit

## Use it

```bash
[ -d $HOME/.config/nvim ] && mv $HOME/.config/{nvim,nvim.old}; \
    git clone https://github.com/saweima12/neovim-boilerplate $HOME/.config/nvim
```

# Structure

```bash
.
├── init.lua                  -- Entry point
├── init.sh                   -- Script for installation side-software (aka packer)
│
├── lua
│  ├── extensions
│  │  ├── noice.lua           -- noice config
│  │  ├── explorer.lua        -- neo-tree config
│  │  ├── fuzzyfinder.lua     -- telescope config
│  │  └── ...
│  │
│  ├── helpers
│  │  ├── globals.lua         -- Global variables (aliases)
│  │  └── keyboard.lua        -- Keyboard helper functions
│  │
│  ├── clsp                   -- lsp config, include: cmp, dap
│  │  ├── mason.lua           -- lsp installer and initialize config.
│  │  ├── cmp.lua             -- autocomplete plugin config.
│  │  ├── dap.lua             -- debugger plugin config.
│  │  └── ...
│  │
│  ├── keybindings.lua        -- Keyboard mappings
│  ├── plugins.lua            -- Plugin initialization via Packer
│  └── settings.lua           -- Settings for neovim
└── README.md
```

# Packed Plugins
- [packer](https://github.com/wbthomason/packer.nvim)
- [lazy.nvim](https://github.com/folke/lazy.nvim)
- [mason.nvim](https://github.com/williamboman/mason.nvim)
- [edge](https://github.com/sainnhe/edge)
- [cmp](https://github.com/hrsh7th/nvim-cmp)
- [lspkind](https://github.com/onsails/lspkind.nvim)
- [lsp-inlayhints.nvim"](https://github.com/lvimuser/lsp-inlayhints.nvim)
- [lspsaga](https://github.com/nvimdev/lspsaga.nvim)
- [nvim-dap](https://github.com/mfussenegger/nvim-dap)
- [nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)
- [nvim-dap-virtual-text](https://github.com/theHamsta/nvim-dap-virtual-text)
- [nvim-dap-go](https://github.com/leoluz/nvim-dap-go)
- [null-ls](https://github.com/jose-elias-alvarez/null-ls.nvim)
- [neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [telescope](https://github.com/nvim-telescope/telescope.nvim)
- [treesitter](https://github.com/tree-sitter/tree-sitter)
- [trouble](https://github.com/folke/trouble.nvim)
- [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [lualine](https://github.com/nvim-lualine/lualine.nvim)
- [toggleterm](https://github.com/akinsho/toggleterm.nvim)
- [which-key](https://github.com/folke/which-key.nvim)
- [project.nvim](https://github.com/ahmedkhalf/project.nvim)
- [todo-comments.nvim](https://github.com/folke/todo-comments.nvim)
- [nvim-spectre](https://github.com/nvim-pack/nvim-spectre)
- [JABS.nvim](https://github.com/matbme/JABS.nvim)
- [nvim-window-picker](https://github.com/s1n7ax/nvim-window-picker)
- [accelerated-jk.nvim](https://github.com/rainbowhxch/accelerated-jk.nvim)
- [mini#bracketed](https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-bracketed.md)
- [mini#indentscope'](https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-indentscope.md)
- [mini#move'](https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-move.md)
- [mini#surround'](https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-surround.md)
- [mini#comment](https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-comment.md)
- [nvim-cursorline](https://github.com/yamatsum/nvim-cursorline)
- [dressing.nvim](https://github.com/stevearc/dressing.nvim)
- [noice.nvim](https://github.com/folke/noice.nvim)
- [gitsigns](https://github.com/lewis6991/gitsigns.nvim)
- [better-escape.nvim"](https://github.com/max397574/better-escape.nvim)
- [neovim-autopairs](https://github.com/windwp/nvim-autopairs)
- [gopher.nvim](https://github.com/olexsmir/gopher.nvim)
- [flash.nvim](https://github.com/folke/flash.nvim)
