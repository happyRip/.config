" set leader key
let g:mapleader = "\<Space>"

" Better navigation for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Split windows easily
nnoremap <Leader>v :vsplit<CR>
nnoremap <Leader>h :split<CR>

" Easy terminal splits
nnoremap <Leader>tv :vsplit term://zsh<CR>
nnoremap <Leader>th :split term://zsh<CR>

" Use alt + hkjl to resize windows
nnoremap <silent> <M-j> :resize -2<CR>
nnoremap <silent> <M-k> :resize +2<CR>
nnoremap <silent> <M-h> :vertical resize -2<CR>
nnoremap <silent> <M-l> :vertical resize +2<CR>

" Alternatives to Esc
inoremap jj <Esc>

" Easy CAPS
nnoremap <Leader>O viwU<Esc>
nnoremap <Leader>o lb~<Esc>

" use Tab to move inside buffers
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

" Better tabbing (stay select)
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Insert mode navigation
inoremap <C-j> <C-w>j
inoremap <C-k> <C-w>k
inoremap <C-h> <C-w>h
inoremap <C-l> <C-w>l

" Adding blank lines
nnoremap <Enter> o<Esc>
nnoremap <Leader><Enter> O<Esc>
:autocmd CmdwinEnter * nnoremap <CR> <CR>
:autocmd BufReadPost quickfix nnoremap <CR> <CR>

" Moving lines up and down
nnoremap <Leader><Up> :m -2<CR>
nnoremap <Leader><Down> :m +1<CR>

" Delete instead of cut
xnoremap <Leader>d "_d
nnoremap <Leader>d "_d
