require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "eslint", "tailwindcss", "ts_ls"}

vim.lsp.enable(servers)

-- -- read :h vim.lsp.config for changing options of lsp servers 

-- Load NvChad's base LSP configurations

-- -- remove this down
-- require("nvchad.configs.lspconfig").defaults()

-- vim.lsp.config("ts_ls", {
--   init_options = {
--     preferences = {
--       -- This kills the "suggested" refactoring/code-action noise
--       disableSuggestions = true,
--     },
--   },
-- })


-- local servers = { "html", "cssls", "eslint", "tailwindcss", "ts_ls" }
-- vim.lsp.enable(servers)