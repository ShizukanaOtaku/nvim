local map = vim.keymap.set
local wk = require("which-key")

map("n", ";", ":", { desc = "Enter CMD mode" })
map("n", "<Esc>", "<cmd>noh<CR>", { desc = "Clear highlights" })

map("n", "<leader>e", vim.cmd.Neotree, { desc = "File tree" })
map("n", "<leader>x", vim.cmd.BufferClose, { desc = "Close buffer" })
map("n", "<tab>", vim.cmd.bprevious, { desc = "Next buffer" })
map("n", "<S-tab>", vim.cmd.bnext, { desc = "Previous buffer" })

map("n", "<leader>l", vim.cmd.Lazy, { desc = "Open Lazy" })
map("n", "<leader>m", vim.cmd.Mason, { desc = "Open Mason" })

-- Luasnip
local ls = require("luasnip")

map({ "i", "s" }, "<C-L>", function() ls.jump(1) end, { silent = true })
map({ "i", "s" }, "<C-J>", function() ls.jump(-1) end, { silent = true })

map({ "i", "s" }, "<C-E>", function()
  if ls.choice_active() then
    ls.change_choice(1)
  end
end, { silent = true })

-- Silicon
wk.add({
  mode = { "v" },
  { "<leader>s",  group = "Silicon" },
  { "<leader>sc", function() require("nvim-silicon").clip() end,  desc = "Copy code screenshot to clipboard" },
  { "<leader>sf", function() require("nvim-silicon").file() end,  desc = "Save code screenshot as file" },
  { "<leader>ss", function() require("nvim-silicon").shoot() end, desc = "Create code screenshot" },
})

-- Pywal
map("n", "<leader>rs", "<CMD>colorscheme pywal16<CR>", { desc = "Reload pywal colorscheme" })

-- Undo tree
map("n", "<leader>u", "<CMD>UndotreeToggle<CR>", { desc = "Toggle Undo Tree" })

-- Telescope
local builtin = require("telescope.builtin")
map("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
map("n", "<leader>fg", builtin.live_grep, { desc = "Live grep" })
map("n", "<leader>fb", builtin.buffers, { desc = "Find in buffers" })
map("n", "<leader>fz", "<CMD>Telescope current_buffer_fuzzy_find<CR>", { desc = "Fuzzy search in current buffer" })
map("n", "<leader>st", "<CMD>Telescope colorscheme<CR>", { desc = "Switch themes" })
map("n", "<leader>ft", "<CMD>TodoTelescope keywords=TODO,FIX<CR>", { desc = "Show all todos in the project" })

-- LSP
map("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
map("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
map("n", "[", "<CMD>lua vim.diagnostic.goto_prev()<CR>", { desc = "Go to previous diagnostic" })
map("n", "]", "<CMD>vim.diagnostic.goto_next()<CR>", { desc = "Go to next diagnostic" })
map("n", "gi", "<CMD>vim.lsp.buf.implementation<CR>", { desc = "Go to implementation" })
map("n", "<leader>sh", vim.lsp.buf.signature_help, { desc = "Show signature help" })
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
map("n", "<leader>dc", vim.lsp.buf.hover, { desc = "Show documentation" });
map("n", "<leader>ra", "<CMD>lua require('renamer').rename()<CR>", { desc = "Rename" })

-- Line numbering
map("n", "<leader>n", "<cmd>set nu!<CR>", { desc = "Toggle line number" })
map("n", "<leader>rn", "<cmd>set rnu!<CR>", { desc = "Toggle relative number" })
