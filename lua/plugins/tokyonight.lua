local M = { "folke/tokyonight.nvim" }

function M.config()
  require("tokyonight").setup({
    style = "night",
  })

  vim.cmd.colorscheme("tokyonight")
end

return M
