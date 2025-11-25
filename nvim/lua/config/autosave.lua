vim.api.nvim_create_autocmd({ "FocusLost", "BufLeave" }, {
  pattern = "*",
  callback = function()
    if vim.bo.modifiable and vim.bo.filetype ~= "lazy" then
      vim.cmd("silent! write")
    end
  end,
})
