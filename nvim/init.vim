lua require('init')

augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank { higroup='IncSearch', timeout=200 }
augroup END

autocmd BufWritePre *.go :silent! lua require('go.format').goimport()
