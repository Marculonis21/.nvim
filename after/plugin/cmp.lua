local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
    mapping = {
        -- Navigate between completion item
        ['<C-k>'] = cmp.mapping.select_prev_item(),
        ['<C-j>'] = cmp.mapping.select_next_item(),

        -- toggle completion
        ['<C-space>'] = cmp_action.toggle_completion(),

        -- navigate between snippet placeholder
        ['<C-p>'] = cmp_action.luasnip_jump_backward(),
        ['<C-n>'] = cmp_action.luasnip_jump_forward(),

        -- Confirm item
        ['<C-l>'] = cmp.mapping.confirm({ select = true }),
    },
    sources = {
        { name = 'path' },
    },
})
