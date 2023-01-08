local M = { "folke/which-key.nvim" }

function M.config()
  require("which-key")

  local mappings = {
    ["<Leader>"] = {
      ["?"] = { "<Cmd>WhichKey<CR>", "Keys" },
      e = { name = "explore" },
      f = { name = "find" },
    },
  }

  require("which-key").register(mappings)
end

return M
