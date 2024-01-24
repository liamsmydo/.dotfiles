require("mason").setup()
require("mason-lspconfig").setup({
ensure_installed = { "lua_ls" }
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {
   capabilities = capabilities,
   settings = {
    Lua = {
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
    },
  },
}

require("lspconfig").pyright.setup {




}


require("lspconfig").bashls.setup {}
