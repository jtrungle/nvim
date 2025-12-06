-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
--
vim.api.nvim_create_autocmd({ "FocusLost" }, {
  pattern = { "*" },
  command = "silent! wall",
  nested = true,
})
-- Force emmet LSP to attach to heex files
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "heex", "eelixir" },
  callback = function(args)
    local clients = vim.lsp.get_clients({ name = "emmet_language_server" })
    if #clients > 0 then
      vim.lsp.buf_attach_client(args.buf, clients[1].id)
    end
  end,
})
