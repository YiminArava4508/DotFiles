-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function map_if_unset(mode, lhs, rhs, opts)
  if vim.fn.maparg(lhs, mode) == "" then
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

map_if_unset("n", "<leader>oc", "<cmd>Octo comment add<CR>", { desc = "Octo comment add" })
map_if_unset("v", "<leader>oc", "<cmd>Octo comment add<CR>", { desc = "Octo comment add" })
map_if_unset("n", "<leader>os", "<cmd>Octo review submit<CR>", { desc = "Octo review submit" })
