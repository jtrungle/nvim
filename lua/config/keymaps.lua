-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.api.nvim_set_keymap("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>rr", function()
  require("dap").restart()
end, { desc = "Restart" })
vim.keymap.set("n", "<leader>du", function()
  require("dap-view").toggle()
end, { desc = "Toggle nvim-dap-view" })

vim.keymap.set("n", "<leader>dv", function()
  local widgets = require("dap.ui.widgets")
  widgets.centered_float(widgets.scopes, { border = "rounded" })
end, { desc = "Toggle debug scopes" })
