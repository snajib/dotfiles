return {
  "rrethy/vim-illuminate",
  config = function()
    require("illuminate").configure({
      delay = 350,
      filetypes_denylist = {
        "aerial",
        "neo-tree",
        "DressingInput",
        "DressingSelect",
        "snacks_dashboard",
      },
      modes_denylist = { "v", "V" },
      under_cursor = false,
    })
  end,
}
