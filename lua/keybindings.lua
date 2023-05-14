require "helpers/globals"
require "helpers/keyboard"

-- Set leader key
g.mapleader = '\\'

-- Input Support {{{
-- ## Simple move indent.
nm('<tab>',  ':><CR>')
nm('<S-tab>',  ':<<CR>')
im('<S-tab>',  '<C-d>')

nm('<A-l>',  ":><CR>")
nm('<A-h>',  ":<<CR>")
vm('<A-l>',  ":><CR>gvl")
vm('<A-h>',  ":<<CR>gvh")
im('<A-l>',  "<esc>:><CR>")
im('<A-h>',  "<esc>:<<CR>")

-- ## Simple move line 
nm('<A-k>', ':m -2<CR>')
nm('<A-j>', ':m +1<CR>')
vm('<A-j>', ":m '>+1<CR>gv=gv")
vm('<A-k>', ":m '<-2<CR>gv=gv")
im('<A-j>', "<esc>:m .+1<CR>==")
im('<A-k>', "<esc>:m .-2<CR>==")

-- ## Undo Breakpoint.
im(",", ',<C-g>u')
im("[", '[<C-g>u')
im(".", '.<C-g>u')
im("!", '!<C-g>u')
im("?", '?<C-g>u')
-- }}}

-- LSP {{{
nm('K', '<cmd>lua vim.lsp.buf.hover()<CR>' )                                      -- Hover object
nm('ga', '<cmd>lua vim.lsp.buf.code_action()<CR>')                                -- Code actions
nm('gR', '<cmd>lua vim.lsp.buf.rename()<CR>')                                     -- Rename an object
nm('gD', '<cmd>lua vim.lsp.buf.declaration()<cr>')                                -- Go to declaration
 -- }}}

-- Telescope {{{
nm('gd', '<cmd>Telescope lsp_definitions<CR>')                            -- Goto declaration
nm('tp', '<cmd>Telescope oldfiles<CR>')                                   -- Show recent files
nm('<leader>te', '<cmd>Telescope git_files<CR>')                                  -- Search for a file in project
nm('<leader>tj', '<cmd>Telescope jumplist<CR>')                                   -- Show jumplist (previous locations)
nm('tO', '<cmd>Telescope find_files<CR>')                                 -- Search for a file (ignoring git-ignore)
nm('<leader>tb', '<cmd>Telescope git_branches<CR>')                       -- Show git branches
nm('<leader>ff', '<cmd>Telescope live_grep<CR>')                                  -- Find a string in project
nm('tq', '<cmd>Telescope buffers<CR>')                                    -- Show all buffers
nm('ta', '<cmd>Telescope<CR>')                                            -- Show all commands
nm('tt', '<cmd>Telescope lsp_dynamic_workspace_symbols<CR>')              -- Search for dynamic symbols
-- }}}

-- Trouble {{{
nm('<leader>x', '<cmd>TroubleToggle<CR>')                                 -- Show all problems in project (with help of LSP)
nm('gr', '<cmd>Trouble lsp_references<CR>')                               -- Show use of object in project
-- }}}

-- Neo Tree {{{
nm('<leader>v', '<cmd>NeoTreeFocusToggle<CR>')                                        -- Toggle file explorer
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

-- ToggleTerm {{{
nm('<C-\\>', '<cmd>ToggleTerm<CR>')
-- }}}

-- Motion Hop {{{
  nm("<leader>m", "<cmd>HopChar2<CR>")
-- }}}




-- vim:tabstop=2 shiftwidth=2 expandtab syntax=lua foldmethod=marker foldlevelstart=0 foldlevel=0
