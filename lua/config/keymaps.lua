-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = false })

-- in your LazyVim config
vim.keymap.set("n", "L", function()
  vim.cmd("bnext " .. vim.v.count1)
end, { desc = "Next buffer (count supported)" })

vim.keymap.set("n", "H", function()
  vim.cmd("bprevious " .. vim.v.count1)
end, { desc = "Previous buffer (count supported)" })
