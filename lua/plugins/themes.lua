return {
  { "catppuccin/nvim",                 name = "catppuccin" },
  { "yorickpeterse/happy_hacking.vim", name = "happy hacking" },
  { "EdenEast/nightfox.nvim",          name = "Nightfox" },
  { "rebelot/kanagawa.nvim",           name = "Kanagawa" },
  {
    "baliestri/aura-theme",
    lazy = false,
    priority = 1000,
    config = function(plugin)
      vim.opt.rtp:append(plugin.dir .. "/packages/neovim")
      vim.cmd([[colorscheme aura-dark]])
    end,
    name = "Aura"
  }
}
