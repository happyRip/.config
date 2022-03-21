local map = vim.api.nvim_set_keymap

local g = vim.g

map('n', '<Space>', '', {})
g.mapleader = ' '

local options = { noremap = true }
map('n', '<Leader><Esc>', ':nohlsearch<CR>', options)

map('n', '<Leader>h', ':split<CR>',  options)
map('n', '<Leader>v', ':vsplit<CR>', options)

map('n', '<Leader>o', 'lb~<Esc>',  options)
map('n', '<Leader>O', 'viwU<Esc>', options)

map('n', '<Tab>',   ':bnext<CR>', options)
map('n', '<S-Tab>', ':bnext<CR>', options)

map('n', '<', '<gv', options)
map('n', '>', '>gv', options)

map('n', '<Enter>',         'o<Esc>', options)
map('n', '<Leader><Enter>', 'O<Esc>', options)

map('n', '<Leader><Up>',   ':m -2<CR>', options)
map('n', '<Leader><Down>', ':m +1<CR>', options)

