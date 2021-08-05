" Better navigation for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hkjl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :veritcal resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" Alternatives to Esc
inoremap jk <Esc>
inoremap kj <Esc>
inoremap <C-c> <Esc>

" Easy CAPS
" inoremap <Leader>o <Esc>viwUi
nnoremap <Leader>O viwU<Esc>

" TAB in general mode will move to text buffer
nnoremap <Tab> :bnext<CR>

" SHIFT-TAB to go back
nnoremap <S-Tab> :bprevious<CR>

" Alternative way to save
nnoremap <C-s> :w<CR>

" Alternative way to quit **without saving**
nnoremap <C-q> :q!<CR>

" TAB completion
inoremap <expr><Tab> pumvisible() ? "\<C-n>" : "\<Tab>"

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

" Moving lines up and down
nnoremap <Leader><Up> :m -2<CR>
nnoremap <Leader><Down> :m +1<CR>

" Opening terminal window
nnoremap <Leader>tv :vsp term://zsh<CR>
nnoremap <Leader>th :sp term://zsh<CR>

" Delete instead of cut
xnoremap <Leader>d "_d
nnoremap <Leader>d "_d
xnoremap <Leader>p "_dP
