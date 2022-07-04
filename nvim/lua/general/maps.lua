local map = vim.api.nvim_set_keymap
local g = vim.g

map('n', '<Space>', '', {})
g.mapleader = ' '

local mapx = require 'mapx'.setup {
  global = true,
  whichkey = true,
}

local nnoremap = mapx.nnoremap

nnoremap('<Esc>', ':nohlsearch<CR>', 'Turn off search highlight', 'silent')

nnoremap('<Leader>h', ':split<CR>', 'Split horizontally', 'silent')
nnoremap('<Leader>v', ':vsplit<CR>', 'Split vertically', 'silent')

nnoremap('<Leader>o', 'lb~<Esc>', 'Toggle capitalization of first character', 'silent')
nnoremap('<Leader>O', 'viwU<Esc>', 'Capitalize word', 'silent')

nnoremap('<Tab>', ':bnext<CR>', 'Buffer next', 'silent')
nnoremap('<S-Tab>', ':bnext<CR>', 'Buffer previous', 'silent')

nnoremap('<C-h>', '<C-w>h', 'Window left', 'silent')
nnoremap('<C-j>', '<C-w>j', 'Window down', 'silent')
nnoremap('<C-k>', '<C-w>k', 'Window up', 'silent')
nnoremap('<C-l>', '<C-w>l', 'Window right', 'silent')

nnoremap('<Enter>', 'o<Esc>k', 'Empty line below', 'silent')
nnoremap('<Leader><Enter>', 'O<Esc>j', 'Empty line above', 'silent')

nnoremap('<Leader><Up>', ':m -2<CR>', 'Swap line up', 'silent')
nnoremap('<Leader><Down>', ':m +1<CR>', 'Swap line down', 'silent')

mapx.nname('<Leader>f', 'Telescope')
nnoremap('<Leader>ff', ':Telescope find_files<CR>', 'Telescope: Find files', 'silent')
nnoremap('<Leader>fg', ':Telescope live_grep<CR>', 'Telescope: Live grep', 'silent')
nnoremap('<Leader>fb', ':Telescope buffers<CR>', 'Telescope: Buffers', 'silent')
nnoremap('<Leader>fh', ':Telescope help_tags<CR>', 'Telescope: Help tags', 'silent')

mapx.nname('<Leader>p', 'Pandoc')
nnoremap('<Leader>pr', ':Pandoc', 'Pandoc: Render document', 'silent', { ft = 'markdown', })

-- Other
local cmd = vim.cmd

cmd [[cabbrev wq execute "lua vim.lsp.buf.formatting_seq_sync()" <bar> wq]]
cmd [[cabbrev x execute "lua vim.lsp.buf.formatting_seq_sync()" <bar> x]]

