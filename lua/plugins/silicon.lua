return {
    "michaelrommel/nvim-silicon",
    lazy = false,
    cmd = "Silicon",
    config = function()
        require("nvim-silicon").setup({
            theme = "OneHalfDark",
            background = "#fff0",
            no_window_controls = true,
            shadow_color = "#fff0",
            shadow_blur_radius = 0,
            to_clipboard = true,
            window_title = function()
                return vim.fn.fnamemodify(
                    vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf()),
                    ":t"
                )
            end,
        })
    end
}
