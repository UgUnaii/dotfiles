return {
        "neovim/nvim-lspconfig",
        dependencies = {
            "b0o/schemastore.nvim",
        },
        config = function()
            local lspconfig = require("lspconfig")
            local on_attach = function(client, bufnr)
                -- Configuración de firma de función en cada servidor LSP
                require("lsp_signature").on_attach({
                    bind = true,
                    floating_window = true,
                    hint_enable = false,
                    handler_opts = {
                        border = "single"
                    },
                }, bufnr)
            end

            -- Configuración de servidores LSP específicos
            lspconfig.ts_ls.setup({
                on_attach = on_attach,
                filetypes = { "typescript", "typescriptreact", "typescript.tsx", "javascript", "javascriptreact" },
            })

            lspconfig.html.setup({
                on_attach = on_attach,
                filetypes = { "html" },
            })

            lspconfig.cssls.setup({
                on_attach = on_attach,
                filetypes = { "css", "scss", "less" },
            })

            lspconfig.jdtls.setup({
                on_attach = on_attach,
                filetypes = { "java" },
                cmd = { "jdtls" },
            })

            lspconfig.jsonls.setup({
                on_attach = on_attach,
                filetypes = { "json" },
                settings = {
                    json = {
                        schemas = require("schemastore").json.schemas(),
                        validate = { enable = true }
                    }
                }
            })

            lspconfig.glslls.setup({
                on_attach = on_attach,
                filetypes = { "glsl" },
                cmd = { "glslangValidator" },
            })
        end
    }
