local null_ls = require('null-ls')

-- null_ls.setup({
--   sources = {
--     null_ls.builtins.code_actions.eslint_d,
--     null_ls.builtins.diagnostics.eslint_d,
--     null_ls.builtins.formatting.eslint_d,
--   }
-- })

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/code_actions
local code_actions = null_ls.builtins.code_actions
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/hover
local hover = null_ls.builtins.hover

null_ls.setup({
  debug = true,
  sources = {
    formatting.eslint,
    formatting.eslint_d,
    formatting.fixjson,
    formatting.markdownlint,
    formatting.black,
    formatting.isort,
    formatting.prettier.with({
      prefer_local = "node_modules/.bin",
    }),
    formatting.trim_newlines,
    formatting.trim_whitespace,
    diagnostics.flake8.with({
      extra_args = { "--max-line-length=119" }
    }),
    diagnostics.eslint_d.with({
      prefer_local = "node_modules/.bin"
    }),
    -- diagnostics.luacheck,
    code_actions.eslint.with({
      prefer_local = "node_modules/.bin"
    }),
    code_actions.gitsigns,
    code_actions.gitrebase,

    hover.dictionary
  },
})
