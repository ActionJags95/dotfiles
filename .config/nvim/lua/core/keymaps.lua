vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Disable spacebar key's default behaviour in Normal and Visual mode
vim.keymap.set({ "n", "v" }, "<Sapce>", "<Nop>", { silent = true })

-- For concisness
local opts = { noremap = true, silent = true }

--save file
vim.keymap.set("n", "<C-s>", "<cmd> w <CR>", opts)

--quit file
vim.keymap.set("n", "<C-q>", "<cmd> q <CR>", opts)

-- resize with arrows
vim.keymap.set("n", "<Up>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<Down>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<Left>", ":vertical resize -2<CR>", opts)
vim.keymap.set("n", "<Right>", ":vertical resize +2<CR>", opts)

-- Buffers
vim.keymap.set("n", "<leader>bn", ":bnext<CR>", opts)
vim.keymap.set("n", "<leader>bp", ":bprev<CR>", opts)
vim.keymap.set("n", "<leader>bd", ":bdelete<CR>", opts)
vim.keymap.set("n", "<leader>bc", "<cmd> enew <CR>", opts)

-- Window management
vim.keymap.set("n", "<leader>v", "<C-w>v", opts)
vim.keymap.set("n", "<leader>h", "<C-w>s", opts)
vim.keymap.set("n", "<leader>se", "<C-w>=", opts)
vim.keymap.set("n", "<leader>xs", ":close<CR>", opts)

-- Navigate between splits
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>", opts)
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>", opts)
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>", opts)
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>", opts)

-- Indentation
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", "<", ">gv", opts)
