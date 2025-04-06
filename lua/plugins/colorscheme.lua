return {
  -- kanagawa
  {
    "rebelot/kanagawa.nvim",
    lazy = true,
    priority = 1000,
    opts = {
      transparent = true,
      italic_comments = true,
      borderless_pickers = false,
    },
  },
  {
    -- cyberdream
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    opts = function(_, opts)
      opts.transparent = true
      opts.italic_comments = true
      opts.borderless_pickers = false
    end,
  },
  {
    "mawkler/modicator.nvim",
    dependencies = "scottmckendry/cyberdream.nvim",
    init = function()
      -- These are required for Modicator to work
      vim.o.cursorline = false
      vim.o.number = true
      vim.o.termguicolors = true
    end,
    opts = {},
  },

  {
    -- solarized-osaka
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent_background = true,
    },
    --   integrations = {
    --     cmp = true,
    --     gitsigns = true,
    --     nvimtree = true,
    --     treesitter = true,
    --     notify = true,
    --     mini = {
    --       enabled = true,
    --       indentscope_color = "",
    --     },
    --   },
  },
  {
    "dgarridoal/one-hunter-material.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent_background = true,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "solarized-osaka",
    },
  },
}
