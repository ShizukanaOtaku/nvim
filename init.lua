require("config.lazy")
require("config.lspconfig")
require("mappings")
-- require("config.indent-blankline")
require("mason").setup()
require("config.cmp")
require("conform").setup {
  format_on_save = {
    timeout_ms = 500,
    lsp_format = "fallback",
  },
}
require("todo-comments").setup()
require("lualine").setup {
  options = { theme = "ayu_mirage" }
}
require("multiple-session").setup()

vim.notify = require("notify")

require("config/options")

local ccc = require("ccc")

ccc.setup({
  highlighter = {
    auto_enable = true,
    lsp = true,
  },
})
