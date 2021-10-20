set hidden                          
set encoding=utf-8                  
set fileencoding=utf-8              
set pumheight=10                    
set ruler              		    
set cmdheight=2                   
set iskeyword+=-                    
set mouse=a                         
set splitbelow splitright                      
set conceallevel=0                  
set tabstop=4  shiftwidth=4                    
set smarttab  expandtab                       
set smartindent  autoindent                      
set laststatus=0                    
set number                          
set cursorline                      
set noshowmode                      
set nobackup                        
set clipboard=unnamedplus           

" turn off continuous comments
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Hybrid line numbers
set number relativenumber

" Autosave and autoread
augroup save
  au!
  au FocusLost * wall
augroup END
set nohidden
set nobackup
set noswapfile
set nowritebackup
set autoread
set autowrite
set autowriteall

" persistent-undo
set undodir=~/.config/nvim/undo
set undofile

" set python provider
let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'

" format python code
autocmd FileType python set equalprg=autopep8\ -

" use true tabs in makefiles
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0
