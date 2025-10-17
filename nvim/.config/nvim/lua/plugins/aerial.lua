return {
  "stevearc/aerial.nvim",
  opts = {
    close_automatic_events = {
      "unfocus",
      "switch_buffer",
    },
    guides = {
      nested_top = " │ ",
      mid_item = " ├─",
      last_item = " └─",
      whitespace = "   ",
    },
    layout = {
      placement = "window",
      close_on_select = false,
      max_width = 30,
      min_width = 30,
    },
    ignore = {
      buftypes = {},
    },
    show_guides = true,
    open_automatic = function()
      local aerial = require("aerial")
      return vim.api.nvim_win_get_width(0) > 80 and not aerial.was_closed()
    end,
  },
  keys = {
    { "<leader>a", "<cmd>AerialToggle<cr>", desc = "Toggle Aerial" },
  },
}
