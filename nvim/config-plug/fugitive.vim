let g:fugitive_git_executable = 'LANG=en_US.UTF-8 git'

nnoremap <silent> <Leader>gs :Git<CR>
nnoremap <silent> <Leader>gd :Gdiff<CR>
nnoremap <silent> <Leader>gc Gcommit<CR>
nnoremap <silent> <Leader>gb Gblame<CR>
nnoremap <silent> <Leader>ge Gedit<CR>
nnoremap <silent> <Leader>gE Gedit<Space>
nnoremap <silent> <Leader>gr :Gread<CR>
nnoremap <silent> <Leader>gR :Gread<Space>
nnoremap <silent> <Leader>gw :Gwrite<CR>
nnoremap <silent> <Leader>gW :Gwrite!<CR>
nnoremap <silent> <Leader>gq :Gwq<CR>
nnoremap <silent> <Leader>gQ :Gwq!<CR>

augroup fugitiveSettings
    autocmd!
    autocmd FileType gitcommit setlocal nolist
    autocmd BufReadPost fugitive://* setlocal bufhidden=delete
augroup END
