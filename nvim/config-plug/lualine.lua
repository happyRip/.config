require('lualine').setup {
    options = {
        theme = 'dracula',
        section_separators = {'', ''},
        component_separators = {'', ''},
        tabline = {
          lualine_a = {},
          lualine_b = {'branch'},
          lualine_c = {'filename'},
          lualine_x = {},
          lualine_y = {},
          lualine_z = {}
        },
        extensions = {'chadtree', 'fugitive', 'fzf'}
    }
}
