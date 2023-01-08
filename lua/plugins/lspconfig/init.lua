local M = { "neovim/nvim-lspconfig" }

M.dependencies = {
  "folke/neodev.nvim",
  "williamboman/mason.nvim",
  {
    "williamboman/mason-lspconfig.nvim",
    config = { automatic_installation = true, }
  },
}

function M.config()
  local servers = {
    bashls = {},
    elixirls = {},
    sumneko_lua = {
      Lua = {
        telemetry = { enable = false },
        workspace = { checkThirdParty = false },
      },
    },
  }

  require("neodev").setup({})
  require("mason").setup()

  local function on_attach(client, buffer)
    require("plugins.lspconfig.keymaps").setup(client, buffer)
    require("plugins.lspconfig.formatting").setup(client, buffer)

    vim.wo.foldmethod = "expr"
    vim.wo.foldexpr = "nvim_treesitter#foldexpr()"
    vim.wo.foldlevel = 99
  end

  local capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

  local mason_lspconfig = require("mason-lspconfig")

  mason_lspconfig.setup({
    ensure_installed = vim.tbl_keys(servers),
  })

  mason_lspconfig.setup_handlers({
    function(server)
      require("lspconfig")[server].setup({
        capabilities = capabilities,
        on_attach = on_attach,
        settings = servers[server],
      })
    end,
  })
end

return M
