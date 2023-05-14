# Neovim-Boilerplate

My Neovim configuration file, cloned from [tokiory/neovim-boilerplate](https://github.com/tokiory/neovim-boilerplate).

## Use it

```bash
[ -d $HOME/.config/nvim ] && mv $HOME/.config/{nvim,nvim.old}; \
    git clone https://github.com/saweima12/neovim-boilerplate $HOME/.config/nvim
```

# Structure

```
.
├── init.lua                  -- Entry point
├── init.sh                   -- Script for installation side-software (aka packer)
│
├── lua
│  ├── extensions
│  │  ├── mason.lua           -- Mason config
│  │  ├── nvimtree.lua        -- Neovim Tree config
│  │  ├── telescope.lua       -- Telescope config
│  │  └── treesitter.lua      -- Treesitter config
│  │
│  ├── helpers
│  │  ├── globals.lua         -- Global variables (aliases)
│  │  └── keyboard.lua        -- Keyboard helper functions
│  │
│  ├── keybindings.lua        -- Keyboard mappings
│  ├── plugins.lua            -- Plugin initialization via Packer
│  └── settings.lua           -- Settings for neovim
└── README.md
```

# Packed Plugins

- [packer](https://github.com/wbthomason/packer.nvim)
- [mason.nvim](https://github.com/williamboman/mason.nvim)
- [lspkind](https://github.com/onsails/lspkind.nvim)
- [cmp](https://github.com/hrsh7th/nvim-cmp)
- [neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [treesitter](https://github.com/tree-sitter/tree-sitter)
- [trouble](https://github.com/folke/trouble.nvim)
- [barbar](https://github.com/romgrk/barbar.nvim)
- [lualine](https://github.com/nvim-lualine/lualine.nvim)
- [symbols-outline](https://github.com/simrat39/symbols-outline.nvim)
- [toggleterm](https://github.com/akinsho/toggleterm.nvim)
- [gitsigns](https://github.com/lewis6991/gitsigns.nvim)
- [hop](https://github.com/phaazon/hop.nvim)
- [comment.nvim](https://github.com/numToStr/Comment.nvim)

