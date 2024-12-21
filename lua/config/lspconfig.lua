local lspconfig = require("lspconfig")
local servers = {
  "tailwindcss",
  "ts_ls",
  "jsonls",
  "eslint",
  "lua_ls",
  "rust_analyzer",
  "clangd",
  "pyright",
  "jdtls",
  "cssls",
  "biome"
}
for _, lsp in pairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilites = capabilities,
  }
end
