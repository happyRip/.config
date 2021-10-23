call plug#begin('~/.config/nvim/plugged')

Plug 'pbrisbin/vim-colors-off'                            " A no-color scheme for vim
Plug 'nikolvs/vim-sunbather'                              " A minimal pink colorscheme for Vim
Plug 'Mofiqul/dracula.nvim'                               " Dracula colorscheme for neovim written in Lua
Plug 'folke/lsp-colors.nvim'                              " Plugin that creates missing LSP diagnostics highlight groups for color schemes
Plug 'tribela/vim-transparent'

" Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}                 " Fast as FUCK nvim completion
" Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}      " 9000+ Snippets
Plug 'neovim/nvim-lspconfig'                              " Quickstart configurations for the Nvim LSP client
Plug 'hrsh7th/cmp-nvim-lsp' " A completion plugin for neovim coded in Lua.
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'SirVer/ultisnips'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'



Plug 'mhinz/vim-startify'                                 " The fancy start screen for Vim
Plug 'hoob3rt/lualine.nvim'
Plug 'mg979/vim-xtabline'                                 " Tabline customization with buffer filtering
Plug 'norcalli/nvim-colorizer.lua'                        " The fastest Neovim colorizer
Plug 'junegunn/rainbow_parentheses.vim' "
Plug 'junegunn/goyo.vim' "
Plug 'junegunn/limelight.vim' "

Plug 'justinmk/vim-dirvish'                               " Directory viewer for Vim
Plug 'kristijanhusak/vim-dirvish-git'                     " Git support for dirvish.vim
Plug 'roginfarrer/vim-dirvish-dovish', {'branch': 'main'} " File manipulation commands for vim-dirvish
Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}

Plug 'jiangmiao/auto-pairs'                               " Insert or delete brackets, parens, quotes in pair
Plug 'tpope/vim-commentary'                               " Comment stuff out
Plug 'tpope/vim-speeddating'                              " Use CTRL-A/CTRL-X to increment dates, times, and more
Plug 'tpope/vim-surround'                                 " Quoting/parenthesizing made simple
Plug 'tpope/vim-fugitive'                                 " A Git wrapper so awesome, it should be illegal
Plug 'tpope/vim-rhubarb'                                  " GitHub extension for fugitive.vim
Plug 'tpope/vim-repeat'                                   " enable repeating supported plugin maps with '.'

Plug 'nvim-lua/plenary.nvim'
Plug 'lewis6991/gitsigns.nvim'

Plug 'folke/trouble.nvim' " A pretty diagnostics, references, telescope results, quickfix and location list to help you solve all the trouble your code is causing.

Plug 'junegunn/gv.vim'                                    " A git commit browser in Vim
Plug 'junegunn/vim-easy-align'                            " A Vim alignment plugin
Plug 'jeffkreeftmeijer/vim-numbertoggle'                  " Toggles between hybrid and absolute line numbers automatically
Plug 'lukas-reineke/indent-blankline.nvim',               " Indent guides for Neovim
Plug 'tpope/vim-sensible'                                 " Defaults everyone can agree on
Plug 'alvan/vim-closetag'                                 " Auto close (X)HTML tags

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }       " fzf ❤️ vim
Plug 'junegunn/fzf.vim'
Plug 'nvim-lua/plenary.nvim'                              " Find, Filter, Preview, Pick. All lua, all the time
Plug 'nvim-telescope/telescope.nvim'

Plug 'sheerun/vim-polyglot'                               " A solid language pack for Vim
Plug 'wellle/context.vim'                                 " Vim plugin that shows the context of the currently visible buffer contents
Plug 'simnalamburt/vim-mundo'                             " Vim undo tree visualizer
Plug 'psliwka/vim-smoothie'                               " Smooth scrolling for Vim done right
Plug 'svermeulen/vim-easyclip'                            " Simplified clipboard functionality for Vim
Plug 'glts/vim-radical'                                   " Convert decimal, hex, octal, binary number representations
Plug 'glts/vim-magnum'                                    " Pure Vim script big integer library

Plug 'unblevable/quick-scope'                             " Lightning fast left-right movement in Vim
Plug 'easymotion/vim-easymotion'                          " Vim motions on speed!

Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }       " Go development plugin for Vim
Plug 'tell-k/vim-autopep8'                                " autopep8 plugin for Vim
Plug 'kergoth/vim-bitbake'                                " Vim files for the BitBake tool
Plug 'suoto/vim-hdl'

Plug 'ryanoasis/vim-devicons'                             " Adds file type icons to Vim plugins
Plug 'kyazdani42/nvim-web-devicons'

call plug#end()
