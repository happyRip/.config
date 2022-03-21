local o = vim.o

o.syntax = 'on'
o.termguicolors = true
o.t_Co = 256
o.background = 'dark'

vim.cmd[[colorscheme dracula]]

require('transparent').setup({
    enable = true,
})