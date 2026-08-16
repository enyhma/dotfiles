-- Delete empty [No Name] buffer when a real file is opened
vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    local buffers = vim.fn.getbufinfo({ buflisted = 1 })
    if #buffers > 1 then
      for _, buf in ipairs(buffers) do
        if buf.name == "" and buf.changed == 0 then
          vim.api.nvim_buf_delete(buf.bufnr, {})
        end
      end
    end
  end,
})
