vim.g.neoformat_try_node_exe = 1

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = {"*.js", "*.ts", "*.spec.ts", "*.spec.js", "*.vue"},
  callback = function()
    vim.cmd("Neoformat prettier")
  end,
})
