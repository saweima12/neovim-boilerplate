require "helpers/globals"
require "helpers/keyboard"

-- Input Support {{{
-- ## Simple move indent.
nm('<tab>', ':><CR>')
nm('<S-tab>', ':<<CR>')
im('<S-tab>', '<C-d>')

-- QucikMove
nm('j', '<Plug>(accelerated_jk_gj)')
nm('k', '<Plug>(accelerated_jk_gk)')

-- ## Undo Breakpoint.
im(",", ',<C-g>u')
im("[", '[<C-g>u')
im(".", '.<C-g>u')
im("!", '!<C-g>u')
im("?", '?<C-g>u')

-- Clean search highlight
nm("<C-f>", "<cmd>noh<CR>")
-- }}}

-- LSP {{{
nm('K', '<cmd>lua vim.lsp.buf.hover()<CR>')        -- Hover object
nm('ga', '<cmd>lua vim.lsp.buf.code_action()<CR>') -- Code actions
nm('gR', '<cmd>lua vim.lsp.buf.rename()<CR>')      -- Rename an object
nm('gD', '<cmd>lua vim.lsp.buf.declaration()<cr>') -- Go to declaration
-- }}}

-- Telescope {{{
nm('gd', '<cmd>Telescope lsp_definitions<CR>')               -- Goto declaration
nm('<leader>tp', '<cmd>Telescope projects<CR>')              -- Show recent files
nm('<leader>te', '<cmd>Telescope git_files<CR>')             -- Search for a file in project
nm('<leader>to', '<cmd>Telescope find_files<CR>')            -- Search for a file (ignoring git-ignore)
nm('<leader>tb', '<cmd>Telescope git_branches<CR>')          -- Show git branches
nm('<leader>ts', '<cmd>Telescope persisted<CR>')             -- Find a string in project
nm('<leader>ff', '<cmd>Telescope live_grep<CR>')             -- Find a string in project
nm('<leader>ta', '<cmd>Telescope<CR>')                               -- Show all commands
-- nm('<leader>tq', '<cmd>Telescope buffers<CR>')                       -- Show all buffers
-- nm('<leader>tj', '<cmd>Telescope jumplist<CR>')              -- Show jumplist (previous locations)
-- nm('<leader>tt', '<cmd>Telescope lsp_dynamic_workspace_symbols<CR>') -- Search for dynamic symbols
-- }}}

-- Trouble {{{
nm('<leader>xx', '<cmd>TroubleToggle<CR>')   -- Show all problems in project (with help of LSP)
nm('<leader>xe', '<cmd>TroubleToggle workspace_diagnostics<CR>')   -- Show all problems in project (with help of LSP)
nm('gr', '<cmd>TroubleToggle lsp_references<CR>') -- Show use of object in project
nm('gv', '<cmd>lua vim.diagnostic.open_float()<CR>') -- Show use of object in project
-- }}}

-- NeoTree {{{
nm('<leader><leader>', '<cmd>Neotree toggle reveal left<CR>') -- Toggle file explorer
-- }}}

-- Barbar {{{
-- ## Move to previous/next
nm('<A-,>', ':BufferPrevious<CR>')
nm('<A-.>', ':BufferNext<CR>')
-- ## Re-order to previous/next
nm('<A-<>', ':BufferMovePrevious<CR>')
nm('<A->>', ':BufferMoveNext<CR>')
-- ## Goto buffer in position...
nm('<A-1>', ':BufferGoto 1<CR>')
nm('<A-2>', ':BufferGoto 2<CR>')
nm('<A-3>', ':BufferGoto 3<CR>')
nm('<A-4>', ':BufferGoto 4<CR>')
nm('<A-5>', ':BufferGoto 5<CR>')
nm('<A-6>', ':BufferGoto 6<CR>')
nm('<A-7>', ':BufferGoto 7<CR>')
nm('<A-8>', ':BufferGoto 8<CR>')
nm('<A-9>', ':BufferGoto 9<CR>')
nm('<A-0>', ':BufferLast<CR>')
-- Close buffer
nm('<A-c>', ':BufferClose<CR>')
nm('<A-S-c>', ':BufferClose!<CR>')
-- }}}

-- SymbolsOutline {{{
nm('<leader>o', '<cmd>SymbolsOutline<CR>')
-- }}}

-- Motion Hop {{{
nm("<leader>j", "<cmd>HopChar2AC<CR>")
nm("<leader>k", "<cmd>HopChar2BC<CR>")
-- }}}

-- Git {{{
nm("<leader>gb", "<cmd>Gitsigns blame_line<CR>")
-- }}}

-- BufferView -> JABS {{{
nm('<leader>p', '<cmd>JABSOpen<CR>')
--}}}

-- SearchReplace -> Muren {{{
nm('<leader>fr', '<cmd>MurenToggle<CR>')
--}}}



-- vim:tabstop=2 shiftwidth=2 expandtab syntax=lua foldmethod=marker foldlevelstart=0 foldlevel=0
