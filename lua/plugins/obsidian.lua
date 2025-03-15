return {
    "epwalsh/obsidian.nvim",
    version = "*",
    lazy = true,
    ft = "markdown",
    opts = {
        workspaces = {
            {
                name = "main",
                path = "~/Documents/Notes",
            },
        },
        follow_url_func = function(url)
            -- Open the URL in the default web browser.
            vim.ui.open(url)
        end,
    },
}
