return {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "saadparwaiz1/cmp_luasnip",
            "L3MON4D3/LuaSnip",
            "ray-x/lsp_signature.nvim",  -- Para la firma de parámetros
        },
        config = function()
            local cmp = require("cmp")
            local lsp_signature = require("lsp_signature")

            cmp.setup({
                snippet = {
                    expand = function(args)
                        require("luasnip").lsp_expand(args.body)
                    end,
                },
                mapping = {
                    ['<C-Space>'] = cmp.mapping.complete(),
                    ['<Down>'] = cmp.mapping.select_next_item(),
                    ['<Up>'] = cmp.mapping.select_prev_item(),
                    ['<Tab>'] = cmp.mapping.confirm({ select = true }),
                },
                sources = cmp.config.sources({
                    { name = 'nvim_lsp' },
                    { name = 'buffer' },
                    { name = 'path' },
                    { name = 'luasnip' },
                }),
                preselect = cmp.PreselectMode.Item,
            })

            -- Configuración de lsp_signature para mostrar parámetros al llamar funciones
            lsp_signature.setup({
                bind = true,
                floating_window = true,
                hint_enable = true,
                hint_prefix = "🔹 ",
                handler_opts = {
                    border = "rounded"
                }
            })
        end
    }
