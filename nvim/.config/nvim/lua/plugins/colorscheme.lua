return {
  {
    "olivercederborg/poimandres.nvim",
    name = "poimandres",
    priority = 1000,
    config = function()
      require("poimandres").setup({
        -- disable_background = true, -- For transparency
      })
      vim.cmd("colorscheme poimandres")
      vim.schedule(function()
        -- local p = require('poimandres.palette')
        vim.api.nvim_set_hl(0, "LspReferenceText", { bg = "#3a4a5a" })
        vim.api.nvim_set_hl(0, "LspReferenceRead", { bg = "#3a4a5a" })
        vim.api.nvim_set_hl(0, "LspReferenceWrite", { bg = "#4a5a6a" })

        vim.api.nvim_set_hl(0, "DocumentHighlight", { bg = "#2a3441" })
        vim.api.nvim_set_hl(0, "DocumentHighlightText", { bg = "#2a3441" })
        vim.api.nvim_set_hl(0, "DocumentHighlightRead", { bg = "#2a3441" })
        vim.api.nvim_set_hl(0, "DocumentHighlightWrite", { bg = "#34404f" })

        -- For transparency
        -- vim.api.nvim_set_hl(0, "Normal", { fg = p.text, bg = "none" })
        -- vim.api.nvim_set_hl(0, "NormalFloat", { fg = p.text, bg = "none" })
        -- vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
      end)
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "poimandres",
    },
  },
}
