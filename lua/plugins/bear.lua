return {
  "nelnn/bear.nvim",
  dependencies = {
    "mfussenegger/nvim-dap",
  },

  -- Default Configuration
  opts = {
    cache_dir = "~/.cache/nvim/bear",
    file_name = "df_debug_" .. os.time() .. ".csv",
    window = {
      width = 0.9,
      height = 0.8,
      border = "rounded",
    },
    keymap = {
      visualise = "<Leader>df",
    },
  },

  config = function(_, opts)
    local df_visidata = require("bear")
    df_visidata.setup(opts)
  end,

  ft = { "python" },
}
