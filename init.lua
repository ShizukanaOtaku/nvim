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

require("dapui").setup()

local dap = require('dap')

dap.adapters.lldb = {
  type = 'executable',
  command = '/sbin/codelldb',
  name = 'lldb'
}

dap.configurations.c = {
  {
    name = "Launch file",
    type = "lldb",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
    args = {}
  }
}

dap.configurations.rust = dap.configurations.c
vim.fn.sign_define("DapBreakpoint", { text = "", texthl = "DapBreakpoint", linehl = "", numhl = "" })

require("nvim-dap-virtual-text").setup()

local ccc = require("ccc")
ccc.setup({
  highlighter = {
    auto_enable = true,
    lsp = true,
  },
})

vim.notify = require("notify")
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
vim.opt.foldmethod = 'indent'
vim.opt.colorcolumn = '90'
vim.opt.undofile = true

require("config/options")
