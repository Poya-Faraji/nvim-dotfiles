local options = {
  formatters_by_ft = {
    lua = { "stylua" },
 -- Map common web dev filetypes to prettier
    javascript = { "prettier" },
    typescript = { "prettier" },
    javascriptreact = { "prettier" },
    typescriptreact = { "prettier" },
    css = { "prettier" },
    html = { "prettier" },
    json = { "prettier" },
    yaml = { "prettier" },
    markdown = { "prettier" },
  },

  format_on_save = {
     -- These options will be passed to conform.format()
     timeout_ms = 500,
     lsp_fallback = true,
  },
}

return options
