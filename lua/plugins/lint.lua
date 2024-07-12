return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPre", "BufNewFile" },
  linters_by_ft = {
    go = { "golangcilint" },
  },
}
