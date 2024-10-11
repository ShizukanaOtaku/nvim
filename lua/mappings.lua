local map = vim.keymap.set
local wk = require("which-key")

map("n", ";", ":", { desc = "Enter CMD mode" })
map("n", "<Esc>", "<cmd>noh<CR>", { desc = "Clear highlights" })

map("n", "<leader>e", vim.cmd.Neotree, { desc = "File tree" })
map("n", "<leader>l", vim.cmd.Lazy, { desc = "Open Lazy" })
map("n", "<leader>x", vim.cmd.BufferClose, { desc = "Close buffer" })
map("n", "<tab>", vim.cmd.bprevious, { desc = "Next buffer" })
map("n", "<S-tab>", vim.cmd.bnext, { desc = "Previous buffer" })

-- Silicon
wk.add({
  mode = { "v" },
  { "<leader>s",  group = "Silicon" },
  { "<leader>sc", function() require("nvim-silicon").clip() end,  desc = "Copy code screenshot to clipboard" },
  { "<leader>sf", function() require("nvim-silicon").file() end,  desc = "Save code screenshot as file" },
  { "<leader>ss", function() require("nvim-silicon").shoot() end, desc = "Create code screenshot" },
})

-- Telescope
local builtin = require("telescope.builtin")
map("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
map("n", "<leader>fg", builtin.live_grep, { desc = "Live grep" })
map("n", "<leader>fb", builtin.buffers, { desc = "Find in buffers" })
map("n", "<leader>fz", "<CMD>Telescope current_buffer_fuzzy_find<CR>", { desc = "Fuzzy search in current buffer" })
map("n", "<leader>st", "<CMD>Telescope colorscheme<CR>", { desc = "Switch themes" })

-- LSP
map("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
map("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
map("n", "[", "<CMD>lua vim.diagnostic.goto_prev()<CR>", { desc = "Go to previous diagnostic" })
map("n", "]", "<CMD>vim.diagnostic.goto_next()<CR>", { desc = "Go to next diagnostic" })
map("n", "gi", "<CMD>vim.lsp.buf.implementation<CR>", { desc = "Go to implementation" })
map("n", "<leader>sh", vim.lsp.buf.signature_help, { desc = "Show signature help" })
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
map("n", "<leader>ra", "<CMD>lua require('renamer').rename()<CR>", { desc = "Rename" })
map("n", "<leader>/", "<CMD>CommentToggle<CR>", { desc = "Toggle comment" })
map("v", "<leader>/", "<CMD>CommentToggle<CR>", { desc = "Toggle comment" })

-- Terminal
map("n", "<leader>th", "<CMD>ToggleTerm direction=horizontal<CR>", { desc = "Horizontal terminal" })
map("n", "<leader>tv", "<CMD>ToggleTerm direction=vertical size=40<CR>", { desc = "Vertical terminal" })
map("n", "<leader>tf", "<CMD>ToggleTerm direction=float<CR>", { desc = "Floating terminal" })
map("n", "<leader>tt", "<CMD>ToggleTerm direction=tab<CR>", { desc = "Tab terminal" })

-- Window switching
map("n", "<C-h>", "<C-w>h", { desc = "Switch window left" })
map("n", "<C-l>", "<C-w>l", { desc = "Switch window right" })
map("n", "<C-j>", "<C-w>j", { desc = "Switch window down" })
map("n", "<C-k>", "<C-w>k", { desc = "Switch window up" })

-- Line numbering
map("n", "<leader>n", "<cmd>set nu!<CR>", { desc = "Toggle line number" })
map("n", "<leader>rn", "<cmd>set rnu!<CR>", { desc = "Toggle relative number" })
