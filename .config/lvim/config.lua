-- settings
vim.opt.relativenumber = true -- relative line numbers
lvim.colorscheme = "catppuccin-mocha"
lvim.transparent_window = true
-- install plugins
lvim.plugins = {
  "ChristianChiarulli/swenv.nvim",
  "stevearc/dressing.nvim",
  "catppuccin/nvim",
}

-- lvim as a python ide --

-- automatically install python syntax highlighting
lvim.builtin.treesitter.ensure_installed = {
  "python",

}

-- setup formatting
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {{ name = "black"}, }

-- setup linting
local linters = require "lvim.lsp.null-ls.linters"
linters.setup { { command = "flake8", args = { "--ignore=E203" }, filetypes = { "python" } } }

require('swenv').setup({
  post_set_venv = function()
    vim.cmd("LspRestart")
  end,
})

-- binding for switching
lvim.builtin.which_key.mappings["C"] = {
  name = "Python",
  c = { "<cmd>lua require('swenv.api').pick_venv()<cr>", "Choose Env" },
}
