-- Your nvim-dap config
return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      { "igorlfs/nvim-dap-view", opts = {} },
    },
    keys = {
      {
        "<leader>du",
        function()
          require("dap-view").toggle()
        end,
        desc = "Dap View",
      },
      {
        "<leader>de",
        function()
          require("dap-view").add_expr()
        end,
        desc = "Dap View - Add Expr",
      },
    },
  },
}
