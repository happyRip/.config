local o = vim.o

o.expandtab = false
o.copyindent = true
o.preserveindent = true
o.softtabstop = 0
o.shiftwidth = 4
o.tabstop = 4
o.smarttab = true

local api = vim.api
local autocmd = api.nvim_create_autocmd

-- Run gofmt + goimport on save
-- api.nvim_exec([[ autocmd BufWritePre *.go :silent! lua require('go.format').goimport() ]], false)
autocmd(
  'BufWritePre',
  {
    pattern = '*.go',
    callback = function()
      require 'go.format'.goimport()
    end,
  }
)
