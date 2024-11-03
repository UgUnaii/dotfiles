return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",      -- Autocompletado LSP
        "hrsh7th/cmp-buffer",        -- Autocompletado de buffers
        "hrsh7th/cmp-path",          -- Autocompletado de rutas de archivos
        "hrsh7th/cmp-cmdline",       -- Autocompletado de la línea de comandos
        "saadparwaiz1/cmp_luasnip",  -- Autocompletado para LuaSnip
        "L3MON4D3/LuaSnip",          -- Motor de snippets
    },
    config = function()
        local cmp = require("cmp")

        cmp.setup({
            snippet = {
                expand = function(args)
                    require('luasnip').lsp_expand(args.body) -- Usar LuaSnip para expandir snippets
                end,
            },
            mapping = {
                ['<C-Space>'] = cmp.mapping.complete(), -- Trigger completion
                ['<Down>'] = cmp.mapping.select_next_item(), -- Select next item
                ['<Up>'] = cmp.mapping.select_prev_item(), -- Select previous item
                ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Confirm selection
            },
            sources = {
                { name = 'nvim_lsp' }, -- Autocompletado LSP
                { name = 'buffer' },   -- Autocompletado de buffer
                { name = 'path' },     -- Autocompletado de ruta
                { name = 'luasnip' },  -- Snippets
            },
        })
    end
}
