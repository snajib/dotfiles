return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        files = {
          hidden = true,
          ignore = {
            ".DS_Store",
            ".git/",
          },
          exclude = {
            "**/.DS_Store",
            "**/.git/**",
          },
        },
      },
    },
  },
}
