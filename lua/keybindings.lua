require "helpers.globals"
require "helpers.keyboard"

-- # Input Support 

-- Simple move indent.
nm('<tab>', ':><CR>')
nm('<S-tab>', ':<<CR>')
im('<S-tab>', '<C-d>')

-- QucikMove
nm('j', '<Plug>(accelerated_jk_gj)')
nm('k', '<Plug>(accelerated_jk_gk)')

-- Undo Breakpoint.
im(",", ',<C-g>u')
im("[", '[<C-g>u')
im(".", '.<C-g>u')
im("!", '!<C-g>u')
im("?", '?<C-g>u')

-- Clean search highlight
nm("<C-f>", "<cmd>noh<CR>")
-- }}}

-- Create empty buf
nm("<A-n>", "<cmd>enew<CR>")

-- Trouble {{{
nm('<leader>xx', '<cmd>TroubleToggle<CR>')   -- Show all problems in project (with help of LSP)
nm('<leader>xe', '<cmd>Trouble workspace_diagnostics<CR>')   -- Show all problems in project (with help of LSP)
nm('<leader>xc', '<cmd>TroubleClose<CR>')   -- Show all problems in project (with help of LSP)
nm('gr', '<cmd>Trouble lsp_references<CR>') -- Show use of object in project
nm('gv', '<cmd>Lspsaga show_cursor_diagnostics<CR>') -- Show use of object in project
-- }}}

-- Outline -> SymbolsOutline 
nm('<leader>o', '<cmd>SymbolsOutline<CR>')

-- BufferView -> JABS 
nm('<leader>p', '<cmd>JABSOpen<CR>')

-- SearchReplace -> Spectre
nm('<leader>fr', '<cmd>Spectre<CR>')

-- ToggleGitBlame
nm("<leader>gb", "<cmd>ToggleBlame virtual<CR>", { desc = "ToggleBlame" } )

-- vim:tabstop=2 shiftwidth=2 expandtab syntax=lua foldmethod=marker foldlevelstart=0 foldlevel=0
