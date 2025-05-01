-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.api.nvim_create_user_command("ReloadSnippets", function()
  require("luasnip.loaders.from_lua").load({ paths = { vim.fn.stdpath("config") .. "/snippets" } })
  require("luasnip.loaders.from_vscode").lazy_load({ paths = { "~/.config/nvim/my-snippets" } })
  vim.notify("Snippets reloaded!")
end, {})
