-- Set keymaps for Nvim
-- :help lua-keymap

-- Shorten the function call for adding new keymaps
local k = vim.keymap.set

-- Silent keymap option
local opts = { silent = true }

-- Use `Alt+{h,j,k,l}` to navigate windows from any mode
-- :help terminal-input
k("t", "<A-h>", "<C-\\><C-N><C-w>h", opts)
k("t", "<A-j>", "<C-\\><C-N><C-w>j", opts)
k("t", "<A-k>", "<C-\\><C-N><C-w>k", opts)
k("t", "<A-l>", "<C-\\><C-N><C-w>l", opts)
k("i", "<A-h>", "<C-\\><C-N><C-w>h", opts)
k("i", "<A-j>", "<C-\\><C-N><C-w>j", opts)
k("i", "<A-k>", "<C-\\><C-N><C-w>k", opts)
k("i", "<A-l>", "<C-\\><C-N><C-w>l", opts)
k("n", "<A-h>", "<C-w>h", opts)
k("n", "<A-j>", "<C-w>j", opts)
k("n", "<A-k>", "<C-w>k", opts)
k("n", "<A-l>", "<C-w>l", opts)

-- Normal mode
-- Use arrow keys to resize split windows
k("n", "<C-Up>", ":res -2<CR>", opts)
k("n", "<C-Down>", ":res +2<CR>", opts)
k("n", "<C-Left>", ":vert res -2<CR>", opts)
k("n", "<C-Right>", ":vert res +2<CR>", opts)

-- Use `Shift+{h,j,k,l}` to navigate between buffers
k("n", "<S-n>", ":bn<CR>", opts)
k("n", "<S-p>", ":bp<CR>", opts)

-- Use `g+{n,p}` to navigate between tabs
k("n", "gn", ":tabn<CR>", opts)
k("n", "gp", ":tabp<CR>", opts)

-- Use `Space` to toggle folds
k("n", "<Space>", "za", opts)

-- Turn off highlighting
k("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)

-- Persistent paste, instead of adding the
k("v", "p", '"_dP', opts)

-- :help Lex
k("n", "<leader>e", ":Lex 24<CR>", opts)

-- Visual mode
-- Stay in visual mode after indenting a selection
k("v", "<", "<gv", opts)
k("v", ">", ">gv", opts)

-- Terminal buffers
-- Use `Escape` to exit terminal mode inside a terminal buffer
k("t", "<Esc>", "<C-\\><C-n>", opts)
