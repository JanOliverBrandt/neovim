vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

map("n", "<Space>", "<Nop>", opt)
map("n", "<Leader>o", "o<Esc>", opt)

-- Search Mapping
map("n", "<Leader>s", "/", opt)
map("n", "<esc>", ":noh <CR>", opt)

-- Tab Handling
map("n", "th", ":tabfirst<CR>", opt)
map("n", "tk", ":tabnext<CR>", opt)
map("n", "tj", ":tabprev<CR>", opt)
map("n", "tl", ":tablast<CR>", opt)
map("n", "tt", ":tabedit<Space>", opt)
map("n", "tn", ":tabnew<CR>", opt)
map("n", "td", ":tabclose<CR>", opt)

-- Buffer Handling
map("n", "<leader>q", ":q<CR>", opt)
map("n", "<leader><Esc>", ":q!<CR>", opt)
map("n", "bn", ":bnext<CR>", opt)
map("n", "bv", ":bprev<CR>", opt)
map("n", "bd", ":bd<CR>", opt)

-- Window Management
map("n", "<leader>h", ":wincmd h<CR>", opt)
map("n", "<leader>j", ":wincmd j<CR>", opt)
map("n", "<leader>k", ":wincmd k<CR>", opt)
map("n", "<leader>l", ":wincmd l<CR>", opt)
map("n", "<silent>", "+ :vertical resize +15<CR>", opt)
map("n", "<silent>", "- :vertical resize -15<CR>", opt)

-- Navigation
map("n", "j", "jzz", opt)
map("n", "k", "kzz", opt)
map("n", "G", "Gzz", opt)
map("n", "<S-j>", "<C-d>zz", opt)
map("n", "<S-k>", "<C-u>zz", opt)


-- Git Handling
map("n", "<leader>p", ":Gitsigns preview_hunk<CR>", opt)
map("n", "<leader>gs", ":G<CR>", opt)
map("n", "<leader>gc", ":G commit<CR>", opt)
map("n", "<leader>gm", ":G merge ", opt)
map("n", "<leader>go", ":G checkout ", opt)
map("n", "<leader>gj", ":diffget //3<CR>", opt)
map("n", "<leader>gf", ":diffget //2<CR>", opt)
map("n", "<leader>gr", "wdv<CR><leader>k:q!<CR><leader>l", opt)
map("n", "<leader>gl", ":G log<CR>", opt)

-- Fuzzy Finding
map("n", "<leader>ff", ":Telescope find_files<cr>", opt)
map("n", "<leader>fg", ":Telescope live_grep<cr>", opt)
map("n", "<leader>fb", ":Telescope buffers<cr>", opt)
map("n", "<leader>fh", ":Telescope help_tags<cr>", opt)
map("n", "<leader>o",  ":Telescope projects<CR>", opt)


-- File Explorer
map("n", "<leader>b", ":NvimTreeToggle<CR>", opt)

-- Appereance
map("n", "<C-i>", ":IndentBlanklineToggle<CR>", opt)

