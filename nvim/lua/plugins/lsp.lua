return {
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPost", "BufNewFile" },
    cmd = { "LspInfo", "LspInstall", "LspUinstall", "LspStart", "LspStop", "LspRestart" },
    config = function()
      local lspconfig = require "lspconfig"

      lspconfig.clangd.setup {}
      lspconfig.rust_analyzer.setup {}
      lspconfig.sourcekit.setup {
        capabilities = {
          workspace = {
            didChangeWatchedFiles = {
              dynamicRegistration = true,
            },
          },
        },
      }

      vim.api.nvim_create_autocmd("LspAttach", {
        desc = "LSP Actions",
        callback = function(args) end,
      })
    end,
  },
}
