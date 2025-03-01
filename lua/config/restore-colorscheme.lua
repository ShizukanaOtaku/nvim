local scheme_file = vim.fn.stdpath("cache") .. "/colorscheme"

local function save_colorscheme(name)
    local file = io.open(scheme_file, "w")
    if file then
        file:write(name)
        file:close()
    end
end

local function load_colorscheme()
    local file = io.open(scheme_file, "r")
    if file then
        local scheme = file:read("*l")
        file:close()
        if scheme and #scheme > 0 then
            vim.cmd("colorscheme " .. scheme)
        end
    end
end

load_colorscheme()

vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "*",
    callback = function()
        save_colorscheme(vim.g.colors_name)
    end,
})
