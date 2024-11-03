return {
    {
        "neovim/nvim-lspconfig",
	dependencies = { 
	    "b0o/schemastore.nvim",
        },
        config = function()
            local lspconfig = require("lspconfig")

            -- Typescript, Javascript, TSX, JSX
            lspconfig.ts_ls.setup({
                on_attach = on_attach,
                filetypes = { "typescript", "typescriptreact", "typescript.tsx", "javascript", "javascriptreact" },
            })

            -- HTML
            lspconfig.html.setup({
                on_attach = on_attach,
                filetypes = { "html" },
            })

            -- CSS
            lspconfig.cssls.setup({
                on_attach = on_attach,
                filetypes = { "css", "scss", "less" },
            })

            -- Java
            lspconfig.jdtls.setup({
                on_attach = on_attach,
                filetypes = { "java" },
                cmd = { 'jdtls' }, 
            })

            -- JSON
            lspconfig.jsonls.setup({
                on_attach = on_attach,
                filetypes = { "json" },
                settings = {
                    json = {
                        schemas = require('schemastore').json.schemas(),
                        validate = { enable = true }
                    }
                }
            })

            -- GLSL
            lspconfig.glslls.setup({
                on_attach = on_attach,
                filetypes = { "glsl" },
                cmd = { "glslangValidator" }, 
            })
        end
    }
}

