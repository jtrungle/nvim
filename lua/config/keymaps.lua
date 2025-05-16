-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.api.nvim_set_keymap("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "dD", "ddgg_P<C-o>==", { noremap = true, silent = true }) -- move line to top
vim.api.nvim_set_keymap("n", "yA", ":%y<CR>", { noremap = true, silent = true }) -- move line to top
vim.keymap.set("n", "<leader>rr", function()
  vim.cmd("write")
  require("dap").restart()
end, { desc = "Restart" })
vim.keymap.set("n", "<leader>dv", function()
  local widgets = require("dap.ui.widgets")
  widgets.centered_float(widgets.scopes, { border = "rounded" })
end, { desc = "Toggle debug scopes" })

vim.keymap.set({ "n", "v" }, "<C-a>", "<cmd>CodeCompanionActions<cr>", { noremap = true, silent = true })
vim.keymap.set({ "n", "v" }, "<LocalLeader>a", "<cmd>CodeCompanionChat Toggle<cr>", { noremap = true, silent = true })
vim.keymap.set("v", "ga", "<cmd>CodeCompanionChat Add<cr>", { noremap = true, silent = true })

-- Expand 'cc' into 'CodeCompanion' in the command line
vim.cmd([[cab cc CodeCompanion]])
