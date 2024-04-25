local lsp_zero = require('lsp-zero')
-- require('lspconfig').lua_ls.setup({})
-- don't copy/paste this if you don't know what is `lua_ls`.

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('lspconfig').cmake.setup({})
require('lspconfig').csharp_ls.setup({})
-- needs compile_commands.json - symlink to root
require('lspconfig').clangd.setup{}
require('lspconfig').glsl_analyzer.setup{}

require('lspconfig').pyright.setup{}
require('lspconfig').lua_ls.setup{}
