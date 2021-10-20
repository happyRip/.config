call plug#begin('~/.config/nvim/plugged')

Plug 'pbrisbin/vim-colors-off' "
Plug 'nikolvs/vim-sunbather' "
Plug 'dracula/vim', { 'as': 'dracula' } "

Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}            " Fast as FUCK nvim completion
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'} " 9000+ Snippets
Plug 'neovim/nvim-lspconfig'                         " Quickstart configurations for the Nvim LSP client

Plug 'mhinz/vim-startify' "
Plug 'itchyny/lightline.vim' "
Plug 'mg979/vim-xtabline'                            " Tabline customization with buffer filtering
Plug 'norcalli/nvim-colorizer.lua' "
Plug 'junegunn/rainbow_parentheses.vim' "
Plug 'junegunn/goyo.vim' "
Plug 'junegunn/limelight.vim' "

Plug 'justinmk/vim-dirvish'                          " Directory viewer for Vim
Plug 'kristijanhusak/vim-dirvish-git'                " Git support for dirvish.vim

Plug 'jiangmiao/auto-pairs'                          " Insert or delete brackets, parens, quotes in pair
Plug 'unblevable/quick-scope'                        " Lightning fast left-right movement in Vim
Plug 'tpope/vim-commentary'                          " Comment stuff out
Plug 'tpope/vim-surround'                            " Quoting/parenthesizing made simple
Plug 'tpope/vim-fugitive'                            " A Git wrapper so awesome, it should be illegal
Plug 'tpope/vim-rhubarb'                             " GitHub extension for fugitive.vim
Plug 'mhinz/vim-signify'                             " Show a diff using Vim its sign column
Plug 'junegunn/gv.vim'                               " A git commit browser in Vim
Plug 'junegunn/vim-easy-align'                       " A Vim alignment plugin
Plug 'jeffkreeftmeijer/vim-numbertoggle'             " Toggles between hybrid and absolute line numbers automatically
Plug 'lukas-reineke/indent-blankline.nvim'           " Indent guides for Neovim
Plug 'tpope/vim-sensible'                            " Defaults everyone can agree on
Plug 'alvan/vim-closetag'                            " Auto close (X)HTML tags
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }  " fzf ❤️ vim
Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot'                          " A solid language pack for Vim
Plug 'wellle/context.vim'                            " Vim plugin that shows the context of the currently visible buffer contents
Plug 'simnalamburt/vim-mundo'                        " Vim undo tree visualizer

" Motions "
Plug 'easymotion/vim-easymotion'                     " Vim motions on speed!

" Language specific "
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' } " Go development plugin for Vim
Plug 'tell-k/vim-autopep8'                          " autopep8 plugin for Vim
Plug 'kergoth/vim-bitbake'                          " Vim files for the BitBake tool

Plug 'ryanoasis/vim-devicons'                       " Adds file type icons to Vim plugins

call plug#end()
