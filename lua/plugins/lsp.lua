return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")
    -- `gopls` setup
    lspconfig.gopls.setup({
      cmd = { "gopls" },
      filetypes = { "go", "gomod", "gowork", "gotmpl" },
      root_dir = lspconfig.util.root_pattern("go.work", "go.mod", ".git"),
      settings = {
        gopls = {
          completeUnimported = true,
          staticcheck = true,
          -- https://github.com/golang/tools/blob/master/gopls/doc/analyzers.md
          analyses = {
            unusedparams = true,
          },
        },
      },
    })
  end,
}
