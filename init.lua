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
require("notify").setup({
	background_colour = "#000000",
})

require("pywal16").setup()
vim.cmd('colorscheme pywal16')

require('lualine').setup {
	options = {
		theme = 'pywal16-nvim',
	},
}

require("telescope").setup({
	pickers = {
		find_files = {
			find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*", "-L" }
		},
		live_grep = {
			find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*", "-L" }
		}
	}
})

require("config/options")
