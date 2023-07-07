local null_ls = require('null-ls')
local lsp = require('lsp-zero')

local null_opts = lsp.build_options('null-ls', {
  on_attach = function(client)
    if client.server_capabilities.documentFormattingProvider then
      vim.cmd('autocmd BufWritePre <buffer> lua vim.lsp.buf.format()')
    end
  end,
})

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics
local action = null_ls.builtins.code_actions

null_ls.setup({
  debug = true,
  on_attach = null_opts.on_attach,
  sources = {
    -- formatting
    -- formatting.prettier,
    formatting.stylua, -- Lua
    formatting.eslint_d,

    -- linting
    lint.eslint_d,

    -- code actions
    action.eslint_d,
  },
})
