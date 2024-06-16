vim.opt.completeopt = {'menu', 'menuone', 'noselect'}

local cmp = require('cmp')
local luasnip = require('luasnip')

local select_opts = {behavior = cmp.SelectBehavior.Insert}

local cmp_action = require('lsp-zero').cmp_action()

cmp.setup{
    completion = {
      completeopt = 'menu,menuone,noinsert'
    },
    snippet = {
        expand = function (args)
            luasnip.lsp_expand(args.body)
        end
    },
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },

        { name = 'path' },
        { name = 'nvim_lsp_signature_help' },
    }),
    mapping = {
        -- Confirm item
        ['<C-l>'] = cmp.mapping.confirm({ select = true }),

        -- Navigate between completion item

        ['<C-j>'] = cmp.mapping(function(fallback)
          local col = vim.fn.col('.') - 1

          if cmp.visible() then
            cmp.select_next_item(select_opts)
          elseif col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
            fallback()
          else
            cmp.complete()
          end
        end, {'i', 's'}),
        ['<C-k>'] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item(select_opts)
          else
            fallback()
          end
        end, {'i', 's'}),

        -- toggle completion
        ['<C-space>'] = cmp_action.toggle_completion(),

        -- -- navigate between snippet placeholder
        -- ['<C-p>'] = cmp_action.luasnip_jump_backward(),
        -- ['<C-n>'] = cmp_action.luasnip_jump_forward(),
        ['<Tab>'] = cmp.mapping(function(fallback)
          if luasnip.jumpable(1) then
            luasnip.jump(1)
          else
            fallback()
          end
        end, {'i', 's'}),

        ['<S-Tab>'] = cmp.mapping(function(fallback)
          if luasnip.jumpable(-1) then
            luasnip.jump(-1)
          else
            fallback()
          end
        end, {'i', 's'}),
    },
}
