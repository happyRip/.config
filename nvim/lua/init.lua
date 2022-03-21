local api = vim.api
local fn = vim.fn
local luv = vim.loop

local packer_path = luv.os_homedir() .. '/.local/share/nvim/site/pack/packer/start/packer.nvim'

api.nvim_command('packadd packer.nvim')

local packer = require('packer')
local packages = require('packages')

packer.startup(function()
    for _, value in pairs(packages) do
        packer.use(value)
    end
end)

require('general.settings')
require('general.theme')
require('general.maps')
require('lsp.config')
require('lsp.cmp.config')
require('snip.config')
require('treesitter.config')
require('plugins.autopairs.config')
require('plugins.colorizer.config')
require('plugins.comment.config')
require('plugins.gitsigns.config')
require('plugins.indent-blankline.config')
require('plugins.lualine.config')
require('plugins.tree.config')
require('plugins.trouble.config')
require('plugins.true-zen.config')
require('plugins.twilight.config')
