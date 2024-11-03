local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- General settings
vim.opt.autoindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.cursorline = true
vim.opt.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr-o:hor20" -- Cursor styles
vim.opt.scrolloff = 8
vim.opt.wrap = false
vim.opt.termguicolors = true -- Enable 24-bit RGB colors

-- Telescope mappings
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opts) -- Find files by name
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", opts) -- Find files by live grep

-- LSP mappings
map("n", "<leader>df", "<cmd>lua vim.lsp.buf.definition()<CR>", opts) -- Go to definition
map("n", "<leader>if", "<cmd>lua vim.lsp.buf.hover()<CR>", opts) -- Info 
map("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts) -- Rename 
map("n", "<leader>.", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts) -- Errors & Warns
map("v", "<leader>.", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts) -- Errors & Warns

-- Tabs mappings
map("n", "<C-t>", "<cmd>tabnew<CR>", opts) -- New tab
map("n", "<Tab>", "<cmd>tabn<CR>", opts) -- Next tab
map("n", "<S-Tab>", "<cmd>tabp<CR>", opts) -- Prev tab

-- Undo & Redo mappings
map("n", "<C-z>", "<cmd>undo<CR>", opts) -- Undo in normal
map("n", "<C-y>", "<cmd>redo<CR>", opts) -- Redo in normal
map("i", "<C-z>", "<cmd>undo<CR>", opts) -- Undo in insert
map("i", "<C-y>", "<cmd>redo<CR>", opts) -- Redo in insert

-- New line mappings
map("n", "<NL>", "o", opts) -- New line in normal
map("i", "<NL>", "<C-o>o", opts) -- New line in insert

-- Delete full words mappings
map("i", "<C-H>", "<C-o>daw", opts) -- Ctrl backspace
map("i", "<C-Del>", "<C-o>diw", opts) -- Ctrl del

-- Copy and select mappings
map("v", "<C-c>", "y", opts) -- Copy selection
map("n", "<C-v>", "p", opts) -- Paste normal
map("i", "<C-v>", "p", opts) -- Paste insert
map("n", "<C-a>", "ggVG", opts) -- Select all normal
map("i", "<C-a>", "<Esc>ggVG", opts) -- Select all insert

-- Additional settings
vim.opt.formatoptions = "jcroql" -- Format options for line wrapping, comments, etc.
vim.opt.lazyredraw = true -- Improve performance during macros
vim.opt.signcolumn = "yes" -- Always show the sign column

-- Set up LSP and nvim-cmp here (you can use the previous cmp.lua configuration)

-- Example for setting a default formatter (you might need a plugin for this)
-- Add this after you set up the nvim-cmp and LSP
vim.g.prettier = {
    tabWidth = 4,
    singleQuote = true,
    trailingComma = "es5",
}

return {}
