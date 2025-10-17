-- Set 4-space tabs for TypeScript files
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "*.ts", "*.tsx" },
  callback = function()
    vim.bo.shiftwidth = 4
    vim.bo.tabstop = 4
    vim.bo.softtabstop = 4
  end,
})
