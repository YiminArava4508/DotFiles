return {
  "stevearc/conform.nvim",
  opts = {
    format_on_save = {
      timeout_ms = 2000,
      lsp_fallback = false, -- stop gopls formatting
    },
    formatters_by_ft = {
      go = { "gofmt" },
    },
  },
}
