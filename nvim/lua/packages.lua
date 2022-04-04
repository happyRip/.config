local packages = {
    { 'wbthomason/packer.nvim', opt = true },
    {
        'neovim/nvim-lspconfig',
        'williamboman/nvim-lsp-installer',

        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',
        'hrsh7th/nvim-cmp',

        'L3MON4D3/LuaSnip',
        'saadparwaiz1/cmp_luasnip',
        'rafamadriz/friendly-snippets',

        -- 'lukas-reineke/lsp-format.nvim',
    },
    {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
    },
    {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons',
        }
    },
    {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    },
    { 'lukas-reineke/indent-blankline.nvim' },
    {
        'p00f/nvim-ts-rainbow',
        requires = { 'nvim-treesitter/nvim-treesitter', },
    },
    {
        'lewis6991/gitsigns.nvim',
        requires = {
            'nvim-lua/plenary.nvim'
        },
        -- tag = 'release' -- To use the latest release
    },
    -- {
    --     "folke/trouble.nvim",
    --     requires = "kyazdani42/nvim-web-devicons",
    -- },
    {
        'Pocco81/TrueZen.nvim',
        'folke/twilight.nvim',
    },
    { 'tpope/vim-sensible' },
    { 'jeffkreeftmeijer/vim-numbertoggle' },
    { 'terrortylor/nvim-comment' },
    { 'windwp/nvim-autopairs' },
    { 'norcalli/nvim-colorizer.lua' },
    { 'Mofiqul/dracula.nvim' },
    { 'xiyaowong/nvim-transparent' }
}

return packages
