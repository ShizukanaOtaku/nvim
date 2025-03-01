return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
        "3rd/image.nvim",
    },
    opts = {
        window = {
            mappings = {
                [" "] = {
                    "toggle_preview",
                    config = {
                        use_float = false,
                        use_image_nvim = true,
                    },
                },
            }
        }
    }
}
