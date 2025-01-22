require("config.lazy")

require("mappings")
require("mason").setup()
require("mason-lspconfig").setup()
require("config.lspconfig")
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

local ccc = require("ccc")
ccc.setup({
  highlighter = {
    auto_enable = true,
    lsp = true,
  },
})

vim.notify = require("notify")

require("pywal16").setup()
require("config/options")
