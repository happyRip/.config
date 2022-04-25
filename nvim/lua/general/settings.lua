local o = vim.o
local wo = vim.wo
local bo = vim.bo

-- global options
o.hidden = true
o.encoding = 'utf-8'
o.fileencoding = 'utf-8'
o.pumheight = 10
o.ruler = true
o.cmdheight = 2
--o.iskeyword:append('-')
o.mouse = 'a'
o.splitbelow = true
o.splitright = true
o.conceallevel = 0
o.tabstop = 4
o.shiftwidth = 4
o.smarttab = true
o.expandtab = true
o.smartindent = true
o.autoindent = true
o.laststatus = 0
o.showmode = false
o.backup = false
o.lazyredraw = true

-- window options
wo.number = true
wo.cursorline = true
wo.list = true

