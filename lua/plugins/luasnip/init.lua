local M = { "L3MON4D3/LuaSnip" }

function M.config()
  local ls = require("luasnip")

  ls.config.set_config({
    history = true,
    updateevents = "TextChanged,TextChangedI",
  })

  vim.keymap.set({ "i", "s" }, "<C-o>", function()
    if ls.expand_or_jumpable() then
      ls.expand_or_jump()
    end
  end)

  vim.keymap.set({ "i", "s" }, "<C-i>", function()
    if ls.jumpable(-1) then
      ls.jump(-1)
    end
  end)

  vim.keymap.set("i", "<C-p>", function()
    if ls.choice_active() then
      ls.change_choice(1)
    end
  end)

  ls.add_snippets("elixir", require("plugins.luasnip.elixir"))
end

return M
