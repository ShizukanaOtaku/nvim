return {
    "epwalsh/obsidian.nvim",
    version = "*",
    lazy = true,
    ft = "markdown",
    opts = {
        workspaces = {
            {
                name = "personal",
                path = "~/Documents/Obsidian/personal",
            },
            {
                name = "work",
                path = "~/Documents/Obsidian/work",
            },
        },
    },
}
