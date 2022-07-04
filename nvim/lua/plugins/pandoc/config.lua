local pandoc = require 'pandoc'

pandoc.setup {
  commands = {
    -- Enable vim commands
    -- :Pandoc
    -- @type: boolean
    enable = true,
    -- Extended Mode
    -- When enabled the arguments passed by the `:Pandoc` command will be extended with the default arguments
    -- @type: boolean
    extended = true,
  },
  -- The pandoc executable
  -- @type: string
  binary = 'pandoc',
  -- Pandoc default options
  default = {
    -- Output file name with extension
    -- @type: string
    output = '%s.pdf',
    -- List of arguments
    -- @type: table
    args = {
      { '--standalone' },
    },
  },
  equation = {
    -- Border style.
    -- 'none', 'single', 'double' or 'rounded'
    -- @type: string
    border = 'single',
  },
}
