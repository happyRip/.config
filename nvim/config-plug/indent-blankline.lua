-- vim.cmd [[highlight IndentBlanklineChar guifg=#6272a4 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineSpaceChar guifg=#6272a4 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineSpaceCharBlankline guifg=#6272a4 gui=nocombine]]

vim.opt.list = true
-- vim.opt.listchars:append("space:⋅")
-- vim.opt.listchars:append("eol:↴")

require("indent_blankline").setup {
    show_end_of_line = true,
}
