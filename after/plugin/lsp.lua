local lsp_zero = require('lsp-zero')
local capabilities = require('cmp_nvim_lsp').default_capabilities()
lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('lspconfig').cmake.setup{capabilities=capabilities}
require('lspconfig').csharp_ls.setup{capabilities=capabilities}
-- needs compile_commands.json - symlink to root
require('lspconfig').clangd.setup{capabilities=capabilities}
require('lspconfig').glsl_analyzer.setup{capabilities=capabilities}

require('lspconfig').pyright.setup{capabilities=capabilities}
-- require('lspconfig').lua_ls.setup{capabilities=capabilities}

local lua_ls_setup = {
    Lua = {
        runtime = {
            -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
            version = "LuaJIT",
        },
        diagnostics = {
            -- Get the language server to recognize the `vim` global
            globals = { "vim" },
        },
        workspace = {
            -- Make the server aware of Neovim runtime files
            library = vim.api.nvim_get_runtime_file("", true),
        },
        -- Do not send telemetry data containing a randomized but unique identifier
        telemetry = {
            enable = false,
        },
    },
}

require('lspconfig').lua_ls.setup {settings=lua_ls_setup}

