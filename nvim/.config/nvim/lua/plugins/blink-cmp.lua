return {
  "saghen/blink.cmp",
  version = "1.*",
  opts = {
    keymap = {
      preset = "default",
      ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
      ["<Tab>"] = { "select_and_accept", "fallback" },
      ["<C-p>"] = { "select_prev", "fallback" },
      ["<C-n>"] = { "select_next", "fallback" },
      ["<C-b>"] = { "scroll_documentation_up", "fallback" },
      ["<C-f>"] = { "scroll_documentation_down", "fallback" },
    },
    completion = {
      keyword = {
        range = "full",
      },
      list = {
        selection = { preselect = true, auto_insert = false },
      },
      documentation = {
        window = {
          border = "rounded",
          min_width = 20,
          max_width = 100,
        },
        auto_show = true,
        auto_show_delay_ms = 500,
      },
      menu = {
        min_width = 34,
        max_height = 10,
        draw = {
          treesitter = { "lsp" },
          columns = {
            { "kind_icon", gap = 1 },
            { "label", "label_description", gap = 1 },
          },
        },
      },
    },
    sources = {
      default = { "lsp", "path", "buffer" },
      providers = {
        buffer = {
          name = "buffer",
          max_items = 4,
        },
      },
    },
    appearance = {
      nerd_font_variant = "mono",
    },
  },
}
