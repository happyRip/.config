call plug#begin('~/.config/nvim/autoload/plugged')

" Custom theme
Plug 'dracula/vim', { 'name': 'dracula' }

" Better syntax support
Plug 'sheerun/vim-polyglot'

" Smooth scrolling
Plug 'psliwka/vim-smoothie'

" Auto pairs for brackets
Plug 'jiangmiao/auto-pairs'

" Rainbow parentheses
Plug 'junegunn/rainbow_parentheses.vim'

" Key legend popup
Plug 'liuchengxu/vim-which-key'

" Lightweight mode indicator
Plug 'itchyny/lightline.vim'

" Tabs indicator
Plug 'mkitt/tabline.vim'

" Autocompletion engine ; Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Hex colors visualizer
Plug 'norcalli/nvim-colorizer.lua'

" Comment line easily
Plug 'tpope/vim-commentary'

" Start screen
Plug 'mhinz/vim-startify'

" Highlight unique characters in words
Plug 'unblevable/quick-scope'

" Universal snippets
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'

" Git integration
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'

" Interactive scratchpad
Plug 'metakirby5/codi.vim'

" Surround text in parentheses
Plug 'tpope/vim-surround'

" Move to any 2 char combo
Plug 'justinmk/vim-sneak'

" Single to multi line
Plug 'AndrewRadev/splitjoin.vim'

" Move func args to sides
Plug 'AndrewRadev/sideways.vim'

" Turn off relative line numbers when it makes sense
Plug 'jeffkreeftmeijer/vim-numbertoggle'

" Automated tables
Plug 'dhruvasagar/vim-table-mode'

" GOLANG support
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" GCode syntax highlighting
Plug 'gregjurman/vim-nc'

" HTML support
Plug 'tmhedberg/matchit'
Plug 'mattn/emmet-vim'

" Pandoc's Markdown syntax
" Plug 'vim-pandoc/vim-pandoc'
" Plug 'vim-pandoc/vim-pandoc-syntax'

call plug#end()

