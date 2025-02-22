require("mason-lspconfig").setup_handlers {
  function (server_name)
    require("lspconfig")[server_name].setup {}
  end,
}

require("lspconfig").clangd.setup{
    cmd = { "clangd", "--compile-commands-dir=" .. vim.fn.getcwd() },
}
