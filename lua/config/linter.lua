local linter = require("lint")

linter.linters_by_ft = {
    rust = { "clippy" }
}

vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost" }, {
    callback = function()
        linter.try_lint()
    end,
})
