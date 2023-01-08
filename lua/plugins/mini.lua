local M = { "echasnovski/mini.nvim" }

function M.align()
  require("mini.align").setup()
end

function M.comment()
  require("mini.comment").setup({})
end

function M.pairs()
  require("mini.pairs").setup({})
end

function M.config()
  M.align()
  M.comment()
  M.pairs()
end

return M
