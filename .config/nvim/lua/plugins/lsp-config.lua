return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      vim.lsp.config('html', {
        settings = {
          Lua = {
            capabilities = capabilities
          }
        },
        on_attach = function(client, bufnr)
          -- ... your keymaps ...
        end
      })
      vim.lsp.config('clangd', {
        settings = {
          Lua = {
            capabilities = capabilities
          }
        },
        on_attach = function(client, bufnr)
          -- ... your keymaps ...
        end
      })

      vim.lsp.enable('clangd')
      vim.lsp.enable('html')

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
