return {
  -- kanagawa
  {
    "rebelot/kanagawa.nvim",
    priority = 1000,
    lazy = true,
    config = function()
      require("kanagawa").setup({
        compile = false, -- enable compiling the colorscheme
        undercurl = true, -- enable undercurls
        commentStyle = { italic = true },
        functionStyle = {},
        keywordStyle = { italic = true },
        statementStyle = { bold = true },
        typeStyle = {},
        transparent = true, -- do not set background color
        dimInactive = false, -- dim inactive window `:h hl-NormalNC`
        terminalColors = true, -- define vim.g.terminal_color_{0,17}
        colors = { -- add/modify theme and palette colors
          palette = {},
          theme = {
            wave = {},
            lotus = {},
            dragon = {},
            all = {
              ui = {
                bg_gutter = "none", -- set bg color for normal background
                bg_sidebar = "none", -- set bg color for sidebar like nvim-tree
                bg_float = "none", -- set bg color for floating windows
              },
            },
          },
        },
        overrides = function(colors) -- add/modify highlights
          return {
            LineNr = { bg = "none" },
            NormalFloat = { bg = "none" },
            FloatBorder = { bg = "none" },
            FloatTitle = { bg = "none" },
            TelescopeNormal = { bg = "none" },
            TelescopeBorder = { bg = "none" },
            LspInfoBorder = { bg = "none" },
          }
        end,
        theme = "wave", -- Load "wave" theme
        background = { -- map the value of 'background' option to a theme
          dark = "wave", -- try "dragon" !
          light = "lotus",
        },
      })
    end,
  },
  -- {
  --   -- cyberdream
  --   "scottmckendry/cyberdream.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = function(_, opts)
  --     opts.transparent = true
  --     opts.italic_comments = true
  --     opts.borderless_pickers = false
  --   end,
  -- },
  -- {
  --   "mawkler/modicator.nvim",
  --   dependencies = "scottmckendry/cyberdream.nvim",
  --   init = function()
  --     -- These are required for Modicator to work
  --     vim.o.cursorline = false
  --     vim.o.number = true
  --     vim.o.termguicolors = true
  --   end,
  --   opts = {},
  -- },
  --
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
  -- {
  --   "dgarridoal/one-hunter-material.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {
  --     transparent_background = true,
  --   },
  -- },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
    },
  },
}
