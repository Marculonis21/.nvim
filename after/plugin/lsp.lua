local lsp_zero = require('lsp-zero')
-- require('lspconfig').lua_ls.setup({})
-- don't copy/paste this if you don't know what is `lua_ls`.
-- yes, lsp-zero has changed since ThePrimeagen released his video "0 to LSP". xDD

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('lspconfig').cmake.setup({})
require('lspconfig').csharp_ls.setup({})
-- needs compile_commands.json - symlink to root
require('lspconfig').clangd.setup{}
require('lspconfig').glslls.setup{}
require('lspconfig').glsl_analyzer.setup{}

require('lspconfig').pyright.setup{}
require('lspconfig').lua_ls.setup{}

-- require'lspconfig'.lua_ls.setup {
--   on_init = function(client)
--     local path = client.workspace_folders[1].name
--     if vim.loop.fs_stat(path..'/.luarc.json') or vim.loop.fs_stat(path..'/.luarc.jsonc') then
--       return
--     end
-- 
--     client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
--       runtime = {
--         -- Tell the language server which version of Lua you're using
--         -- (most likely LuaJIT in the case of Neovim)
--         version = 'LuaJIT'
--       },
--       -- Make the server aware of Neovim runtime files
--       workspace = {
--         checkThirdParty = false,
--         library = {
--           vim.env.VIMRUNTIME
--           -- Depending on the usage, you might want to add additional paths here.
--           -- "${3rd}/luv/library"
--           -- "${3rd}/busted/library",
--         }
--         -- or pull in all of 'runtimepath'. NOTE: this is a lot slower
--         -- library = vim.api.nvim_get_runtime_file("", true)
--       }
--     })
--   end,
--   settings = {
--     Lua = {}
--   }
-- }
