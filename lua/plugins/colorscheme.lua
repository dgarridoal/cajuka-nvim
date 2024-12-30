return {
  -- {
  --   -- aura-dark
  --   "baliestri/aura-theme",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {
  --     transparent_background = true,
  --   },
  -- },
  -- {
  --   -- cyberdream
  --   "scottmckendry/cyberdream.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = function(_, opts)
  --     opts.transparent = true
  --     opts.italic_comments = true
  --     opts.borderless_telescope = false
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
  -- {
  --   -- onedark
  --   "navarasu/onedark.nvim",
  --   priority = 1000,
  -- },
  {
    "sainnhe/sonokai",
    priority = 1000,
    config = function()
      vim.g.sonokai_transparent_background = "1"
      vim.g.sonokai_enable_italic = "1"
      vim.g.sonokai_style = "andromeda"
    end,
  },
  -- {
  --   -- min-theme
  --   "datsfilipe/min-theme.nvim",
  --   lazy = true,
  --   priority = 1000,
  --   theme = "dark", -- String: 'dark' or 'light', determines the colorscheme used
  --   transparent = true, -- Boolean: Sets the background to transparent
  --   italics = {
  --     comments = true, -- Boolean: Italicizes comments
  --     keywords = true, -- Boolean: Italicizes keywords
  --     functions = true, -- Boolean: Italicizes functions
  --     strings = true, -- Boolean: Italicizes strings
  --     variables = true, -- Boolean: Italicizes variables
  --   },
  -- },
  --

  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    config = function()
      require("solarized-osaka").setup({
        transparent = true,
        terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
        styles = {
          -- Style to be applied to different syntax groups
          -- Value is any valid attr-list value for `:help nvim_set_hl`
          comments = { italic = true },
          keywords = { italic = false },
          functions = {},
          variables = {},
          -- Background styles. Can be "dark", "transparent" or "normal"
          sidebars = "dark", -- style for sidebars, see below
          floats = "dark", -- style for floating windows
        },
        sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
        day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
        hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
        dim_inactive = false, -- dims inactive windows
        lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold
        on_highlights = function(hl, c)
          local prompt = "#2d3149"
          hl.TelescopeNormal = {
            bg = c.bg_dark,
            fg = c.fg_dark,
          }
          hl.TelescopeBorder = {
            bg = c.bg_dark,
            fg = c.bg_dark,
          }
          hl.TelescopePromptNormal = {
            bg = c.bg_dark,
          }
          hl.TelescopePromptBorder = {
            bg = c.bg_dark,
            fg = c.bg_dark,
          }
          hl.TelescopePromptTitle = {
            bg = prompt,
            fg = "#2C94DD",
          }
          hl.TelescopePreviewTitle = {
            bg = c.bg_dark,
            fg = c.bg_dark,
          }
          hl.TelescopeResultsTitle = {
            bg = c.bg_dark,
            fg = c.bg_dark,
          }
        end,
      })
    end,
  },

  -- {
  --   -- solarized-osaka
  --   "craftzdog/solarized-osaka.nvim",
  --   lazy = true,
  --   priority = 1000,
  --   opts = {
  --     transparent_background = true,
  --   },
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
  -- },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "solarized-osaka",
    },
  },
}
