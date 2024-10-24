return {
  {
    "startup-nvim/startup.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim", "nvim-telescope/telescope-file-browser.nvim" },
    config = function()
      require "startup".setup()
    end
  },
  {
    "numToStr/Comment.nvim",
    opts = {
      opleader = {
        line = "<leader>/"
      },
    }
  },
  { "lewis6991/gitsigns.nvim", opts = {} },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
    }
  },
  { "uga-rosa/ccc.nvim" },
  {
    "michaelrommel/nvim-silicon",
    lazy = false,
    cmd = "Silicon",
    opts = {
      theme = "Dracula",
      background = "#790281"
    },
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    -- opts = {}, -- uncomment to enable
  },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
  },
  { "filipdutescu/renamer.nvim",    dependencies = { "nvim-lua/plenary.nvim" }, opts = {} },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" }
  },
  { "niuiic/multiple-session.nvim", dependencies = { "niuiic/core.nvim" } },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        rust,
        lua,
      }
    },
  },
  { "rcarriga/nvim-notify" },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      "3rd/image.nvim",              -- Optional image support in preview window: See `# Preview Mode` for more information
    }
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
    },
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
    },
  },
  {
    "romgrk/barbar.nvim",
    dependencies = {
      "lewis6991/gitsigns.nvim",     -- OPTIONAL: for git status
      "nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
    },
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {
      auto_hide = 1
    },
  },
  { "akinsho/toggleterm.nvim", version = "*", config = true },
  {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  },
  {
    "stevearc/conform.nvim",
    opts = {},
  },
  {
    "purp0w/theme-persistence.nvim",
    config = function()
      require("theme-persistence")
    end,
    lazy = false, -- To ensure it applies the theme on startup
  },

  -- Themes
  { "catppuccin/nvim",                 name = "catppuccin" },
  { "yorickpeterse/happy_hacking.vim", name = "happy hacking" },
  { "EdenEast/nightfox.nvim",          name = "Nightfox" },
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
