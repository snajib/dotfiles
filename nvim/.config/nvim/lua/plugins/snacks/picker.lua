return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      win = {
        input = {
          keys = {
            ["<a-c>"] = {
              "toggle_cwd",
              mode = { "n", "i" },
            },
          },
        },
      },
      actions = {
        ---@param p snacks.Picker
        toggle_cwd = function(p)
          local git_root = vim.fn.systemlist("git rev-parse --show-toplevel")[1]
          local root = (vim.v.shell_error == 0 and git_root) or vim.fn.getcwd()
          local cwd = vim.fs.normalize((vim.uv or vim.loop).cwd() or ".")
          local current = p:cwd()
          p:set_cwd(current == root and cwd or root)
          p:find()
        end,
      },
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
