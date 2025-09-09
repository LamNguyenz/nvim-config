-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = false })

-- K -> run command :lineBreakInsert
vim.api.nvim_set_keymap("n", "K", ":lineBreakInsert<CR>", { noremap = true, silent = true })

-- L -> go to end of line ($)
vim.api.nvim_set_keymap("n", "L", "$", { noremap = true, silent = true })

-- H -> go to beginning of line (^)
vim.api.nvim_set_keymap("n", "H", "^", { noremap = true, silent = true })
