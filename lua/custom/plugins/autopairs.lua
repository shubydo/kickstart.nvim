return {
  "windwp/nvim-autopairs",
  -- Optional dependency
  dependencies = { 'hrsh7th/nvim-cmp' },
  config = function()
    require("nvim-autopairs").setup {
      check_ts = true,
      ts_config = {
        lua = {'string'},-- it will not add pair on that treesitter node
        -- javascript = {'template_string'},
        -- java = false,-- don't check treesitter on java
      }
	}
    -- If you want to automatically add `(` after selecting a function or method
    local cmp_autopairs = require('nvim-autopairs.completion.cmp')
    local cmp = require('cmp')
    cmp.event:on(
      'confirm_done',
      cmp_autopairs.on_confirm_done()
    )
  end,
}