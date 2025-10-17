return {
  "lewis6991/gitsigns.nvim",
  opts = {
    attach_to_untracked = false,
    preview_config = {
      border = "rounded",
    },
    signcolumn = true,
    signs = {
      change = { text = "┋" },
    },
    signs_staged = {
      change = { text = "┋" },
    },
    update_debounce = 500,
  },
}
