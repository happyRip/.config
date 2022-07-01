local Rule = require('nvim-autopairs.rule')
local npairs = require('nvim-autopairs')

npairs.setup({
  check_ts = true,
  ts_config = {
    lua = { 'string' }, -- it will not add a pair on that treesitter node
    javascript = { 'template_string' },
    java = false, -- don't check treesitter on java
  },
  enable_check_bracket_line = false,
  ignored_next_char = "[%w%.]", -- will ignore alphanumeric and `.` symbol
})

local ts_conds = require('nvim-autopairs.ts-conds')

-- press % => %% only while inside a comment or string
npairs.add_rules({
  Rule("%", "%", "lua")
      :with_pair(ts_conds.is_ts_node({ 'string', 'comment' })),
  Rule("$", "$", "lua")
      :with_pair(ts_conds.is_not_ts_node({ 'function' }))
})

npairs.add_rules({
  Rule("$$", "$$", "tex")
      :with_pair(function(opts)
        print(vim.inspect(opts))
        if opts.line == "aa $$" then
          -- don't add pair on that line
          return false
        end
      end)
}
)
