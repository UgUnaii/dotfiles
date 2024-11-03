-- Configuración de tabulación
vim.o.tabstop = 4       -- Número de espacios que un tab ocupa
vim.o.shiftwidth = 4     -- Número de espacios para el auto-indentado
vim.o.expandtab = true   -- Convierte tabulaciones a espacios

-- Activar completado de tabulaciones
vim.o.completeopt = "menuone,noinsert,noselect"
vim.o.tabpagemax = 100   -- Establece el máximo de páginas de tabulaciones

-- Usar comillas dobles por defecto
vim.g.localleader = "\\"
vim.g.spelllang = "en_us"

return {}
