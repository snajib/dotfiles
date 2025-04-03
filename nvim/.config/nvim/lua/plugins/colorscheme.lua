return {
  {
    "maxmx03/dracula.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      local dracula = require("dracula")
      dracula.setup({
        transparent = true, -- This is where transparent option should be set
        -- rest of your config...
      })
      vim.cmd.colorscheme("dracula")
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "dracula",
    },
  },
}
