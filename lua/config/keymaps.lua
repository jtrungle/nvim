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

vim.api.nvim_create_user_command("RemoveCarriageReturns", function()
  vim.cmd([[%s/\r$//g]])
end, {})
-- Expand 'cc' into 'CodeCompanion' in the command line
vim.cmd([[cab cc CodeCompanion]])

local betterTerm = require("betterTerm")
-- toggle firts term
vim.keymap.set({ "n", "t" }, "<C-;>", betterTerm.open, { desc = "Open terminal" })
-- Select term focus
vim.keymap.set({ "n" }, "<leader>Tt", betterTerm.select, { desc = "Select terminal" })

-- Rename the current terminal
vim.keymap.set("n", "<leader>Tr", betterTerm.rename, { desc = "Rename terminal" })

vim.api.nvim_create_user_command("YankFilePath", function()
  vim.fn.setreg("+", vim.fn.expand("%:p"))
end, {})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    vim.opt_local.conceallevel = 0 -- start shown
    vim.opt_local.concealcursor = "n"

    -- Match single-line comments, including indented ones
    vim.cmd([[
      syntax match PythonComment "^\s*#.*" conceal
    ]])

    -- Toggle keybind
    vim.keymap.set("n", "<leader>hc", function()
      if vim.opt_local.conceallevel:get() == 0 then
        vim.opt_local.conceallevel = 2
      else
        vim.opt_local.conceallevel = 0
      end
    end, { buffer = true, desc = "Toggle conceal for comments/docstrings" })
  end,
})

-- ~/.config/nvim/lua/plugins/hidecomments.lua
vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    vim.opt_local.foldmethod = "expr"
    vim.opt_local.foldexpr = "v:lua.require'fold'.foldexpr()"
    vim.opt_local.foldenable = false

    vim.keymap.set("n", "<leader>hd", function()
      vim.cmd("normal! zM")
    end, { buffer = true, desc = "Fold comments + docstrings" })
  end,
})
