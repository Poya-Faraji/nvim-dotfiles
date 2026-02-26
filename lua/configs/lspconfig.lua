-- ~/.config/nvim/lua/custom/configs/lspconfig.lua

-- Load NvChad's default LSP setup (keymaps, capabilities, etc.)
require("nvchad.configs.lspconfig").defaults()

-- Get the on_attach and capabilities from NvChad for custom server configs
local on_attach = require("nvchad.configs.lspconfig").on_attach
local capabilities = require("nvchad.configs.lspconfig").capabilities

-- Define custom configuration for the TypeScript/JavaScript server
vim.lsp.config.ts_ls = {
  on_attach = on_attach,
  capabilities = capabilities,
  init_options = {
    preferences = {
      disableSuggestions = true, -- Hides all suggestion diagnostics (like 'require' hints)
    },
  },
}

-- List of language servers to enable
local servers = { "html", "cssls", "eslint", "tailwindcss", "ts_ls" }

-- Enable all servers (ts_ls will use the config defined above)
vim.lsp.enable(servers)
