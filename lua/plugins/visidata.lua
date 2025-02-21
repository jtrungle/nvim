return {
  "Willem-J-an/visidata.nvim",
  dependencies = {
    "mfussenegger/nvim-dap",
    "rcarriga/nvim-dap-ui",
  },
  config = function()
    local dap = require("dap")
    dap.defaults.fallback.external_terminal = {
      command = "alacritty",
      args = { "--hold", "--command" },
    }
    vim.keymap.set("v", "<leader>vp", require("visidata").visualize_pandas_df, { desc = "[v]isualize [p]andas df" })
  end,
}
