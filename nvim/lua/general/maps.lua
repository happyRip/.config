local map = vim.api.nvim_set_keymap

local g = vim.g
local cmd = vim.cmd

map('n', '<Space>', '', {})
g.mapleader = ' '

local options = { noremap = true }
map('n', '<Leader><Esc>', ':nohlsearch<CR>', options)

map('n', '<Leader>h', ':split<CR>', options)
map('n', '<Leader>v', ':vsplit<CR>', options)

map('n', '<Leader>o', 'lb~<Esc>', options)
map('n', '<Leader>O', 'viwU<Esc>', options)

map('n', '<Tab>', ':bnext<CR>', options)
map('n', '<S-Tab>', ':bnext<CR>', options)

map('n', '<', '<gv', options)
map('n', '>', '>gv', options)

map('n', '<Enter>', 'o<Esc>k', options)
map('n', '<Leader><Enter>', 'O<Esc>j', options)

map('n', '<Leader><Up>', ':m -2<CR>', options)
map('n', '<Leader><Down>', ':m +1<CR>', options)

cmd [[cabbrev wq execute "lua vim.lsp.buf.formatting_seq_sync()" <bar> wq]]
cmd [[cabbrev x execute "lua vim.lsp.buf.formatting_seq_sync()" <bar> x]]

-- Telescope
map('n', '<Leader>ff', ':Telescope find_files<CR>', options)
map('n', '<Leader>fg', ':Telescope live_grep<CR>', options)
map('n', '<Leader>fb', ':Telescope buffers<CR>', options)
map('n', '<Leader>fh', ':Telescope help_tags<CR>', options)
