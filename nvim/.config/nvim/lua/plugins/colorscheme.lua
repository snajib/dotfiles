return {
  {
    "mcauley-penney/techbase.nvim",
    branch = "lightening",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("techbase")
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "techbase",
    },
  },
}
