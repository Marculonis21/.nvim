local lsp_zero = require('lsp-zero')
local capabilities = require('cmp_nvim_lsp').default_capabilities()
lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)


vim.lsp.enable('cmake')
vim.lsp.enable('csharp_ls')
vim.lsp.enable('clangd')
vim.lsp.enable('pyright')
vim.lsp.enable('pcssls')
vim.lsp.enable('css_variables')
vim.lsp.enable('pcssls')
vim.lsp.enable('julials')
-- require('lspconfig').cmake.setup{capabilities=capabilities}
-- require('lspconfig').csharp_ls.setup{capabilities=capabilities}
-- -- needs compile_commands.json - symlink to root
-- require('lspconfig').clangd.setup{capabilities=capabilities}
-- require('lspconfig').glsl_analyzer.setup{capabilities=capabilities}

-- require('lspconfig').pyright.setup{capabilities=capabilities}
-- require('lspconfig').cssls.setup{}
-- require('lspconfig').css_variables.setup{}

-- require('lspconfig').julials.setup{
--   on_new_config = function(new_config, _)
--       local julia = vim.fn.expand("~/.julia/environments/nvim-lspconfig/bin/julia")
--       if require'lspconfig'.util.path.is_file(julia) then
--       vim.notify("Hello!")
--           new_config.cmd[1] = julia
--       end
--     end
-- }
-- require('lspconfig').julials.setup{}

-- require'lspconfig'.rust_analyzer.setup{
--   settings = {
--     ['rust-analyzer'] = {
--       diagnostics = {
--         enable = false;
--       }
--     }
--   }
-- }

-- local lua_ls_setup = {
--     Lua = {
--         runtime = {
--             -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
--             version = {"Lua 5.3", "LuaJIT"}
--         },
--         diagnostics = {
--             -- Get the language server to recognize the `vim` global
--             globals = "vim" ,
--         },
--         workspace = {
--           checkThirdParty = false,
--           library = { vim.env.VIMRUNTIME },
--         },
--         -- Do not send telemetry data containing a randomized but unique identifier
--         telemetry = {
--             enable = false,
--         },
--     },
-- }

-- require('lspconfig').lua_ls.setup {settings=lua_ls_setup}

-- require'lspconfig'.djlsp.setup{
--     cmd = { '/home/marculonis/.local/bin/djlsp' },
-- }

