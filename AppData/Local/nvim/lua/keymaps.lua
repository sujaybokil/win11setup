local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true }

-- Escape the escape key
map('i', 'jk', '<Esc>', default_opts)
map('v', 'jk', '<Esc>', default_opts)

-- Jump thru splits like a ninja
map('n', '<leader>h', '<C-W><C-H>', default_opts)
map('n', '<leader>j', '<C-W><C-J>', default_opts)
map('n', '<leader>k', '<C-W><C-K>', default_opts)
map('n', '<leader>l', '<C-W><C-L>', default_opts)

-- File tree
map('n', '<leader>e', ':NvimTreeToggle<CR>', default_opts)

-- Quickedit Neovim config
map('n', '<leader>vc', ':cd ~\\AppData\\Local\\nvim<CR>:NvimTreeToggle<CR>', default_opts)

-- Telescope keymaps
map("n", "<leader>fb", ":Telescope file_browser<CR>", default_opts)
map("n", "<leader>ff", ":Telescope find_files<CR>", default_opts)
map("n", "<leader>bf", ":Telescope buffers<CR>", default_opts)
map("n", "<leader>ft", ":Telescope help_tags<CR>", default_opts)
map("n", "<leader>sl", ":Telescope session-lens search_session<CR>", default_opts)
map("n", "<leader>ss", ":wall<CR>:SaveSession ~/AppData/Local/nvim/sessions/.vim<left><left><left><left>", default_opts)

-- Neovim Terminal stuff 
map("n", "<leader>tt", ":new term://pwsh<CR>:resize 17<CR>:startinsert<CR>clear<CR>", default_opts)
map("t", "jk", "<C-\\><C-N>", default_opts)

-- Basic Saving 
map("n", "<C-Q>", ":wall<CR>:qall<CR>", default_opts)

-- Git Gud at it
map("n", "<leader>gs", ":Git<CR>", default_opts)
map("n", "<leader>gc", ":Git commit<CR>", default_opts)
map("n", "<leader>gp", ":Git push<CR>", default_opts)

