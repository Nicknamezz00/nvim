return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  formatters_by_ft = {
    go = { "gofmt" },
    lua = { "stylua" },
    python = { "isort", "black" },
    javascript = { "prettierd", "prettier" },
  },
  format_on_save = {
    lsp_fallback = true,
    async = false,
    timeout_ms = 1000,
  },
}
