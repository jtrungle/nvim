return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- We're defining a server manually, so don't install with Mason
        gdscript = {
          -- `name` is not standard in lspconfig, but harmless
          name = "godot",
          -- use manual connection to the Godot editor
          cmd = vim.lsp.rpc.connect("127.0.0.1", 6005),
          -- optionally add filetypes and root_dir for better integration
          filetypes = { "gd", "gdscript" },
          root_dir = function(fname)
            return vim.fn.getcwd() -- or use lspconfig.util.root_pattern
          end,
        },
      },
    },
  },
}
