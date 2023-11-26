return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "astro",
        "cmake",
        "c",
        "cpp",
        "css",
        "dart",
        "fish",
        "gitignore",
        "go",
        "graphql",
        "http",
        "java",
        "jsonc",
        "scss",
        "sql",
        "svelte",
        "vim",
        "regex",
        "lua",
        "bash",
        "markdown",
        "markdown_inline",
      },
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)

      -- MDX
      vim.filetype.add({
        extension = {
          mdx = "mdx",
        },
      })
      vim.treesitter.language.register("markdown", "mdx")
    end,
  },
}
