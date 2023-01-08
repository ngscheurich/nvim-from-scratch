return {
  setup = function(client, buffer)
    if (client.supports_method("textDocument/formatting")) then
      vim.api.nvim_create_autocmd("BufWritePre", {
        buffer = buffer,
        callback = function()
          vim.lsp.buf.format()
        end,
      })
    end
  end
}
