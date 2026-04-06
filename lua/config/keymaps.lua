vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set('n', '<leader>o', ':update<CR> :source<CR>')
vim.keymap.set('n', '<leader>w', ':write<CR>')
vim.keymap.set('n', '<leader>q', ':quit<CR>')


-- Mover linhas
vim.keymap.set("n", "<A-k>", "<cmd>move .-2<cr>==", { desc = "move line up" })
vim.keymap.set("n", "<A-j>", "<cmd>move .+1<cr>==", { desc = "move line down" })
vim.keymap.set("v", "<A-k>", ":move '<-2<cr>gv=gv", { desc = "move selection up" })
vim.keymap.set("v", "<A-j>", ":move '>+1<cr>gv=gv", { desc = "move selection down" })

-- Normal mode: reindenta a linha atual
vim.keymap.set("n", "<leader>i", "==", { desc = "reindent line" })

-- Visual mode: reindenta a seleção e mantém selecionado
vim.keymap.set("v", "<leader>i", "=gv", { desc = "reindent selection" })

-- Normal mode: reindenta o arquivo inteiro
vim.keymap.set("n", "<leader>I", "gg=G", { desc = "reindent file" })

